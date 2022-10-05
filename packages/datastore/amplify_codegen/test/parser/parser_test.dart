// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_codegen/src/parser/parser.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:test/test.dart';

// Follows the tests found in amplify-codegen:
// https://github.com/aws-amplify/amplify-codegen/blob/main/packages/appsync-modelgen-plugin/src/__tests__/utils/process-connections-v2.test.ts
void main() {
  Map<String, ModelTypeDefinition> parseModels(String schema) {
    return {
      for (final definition in parseSchema(schema)
          .typeDefinitions
          .values
          .whereType<ModelTypeDefinition>())
        definition.name: definition,
    };
  }

  group('Parser', () {
    group('hasMany', () {
      late Map<String, ModelTypeDefinition> v2Models;
      late Map<String, ModelTypeDefinition> v2IndexedModels;

      setUpAll(() {
        const v2Schema = '''
          type Post @model {
            comments: [Comment] @hasMany(fields: ["id"])
          }

          type Comment @model {
            postID: ID! @primaryKey(sortKeyFields: ["content"])
            content: String!
            post: Post @belongsTo(fields:["postID"])
          }
          ''';

        const v2IndexSchema = '''
          type Post @model {
            id: ID!
            title: String!
            comments: [Comment] @hasMany(indexName: "byPost", fields: ["id"])
          }

          type Comment @model {
            id: ID!
            postID: ID! @index(name: "byPost", sortKeyFields: ["content"])
            content: String!
          }
          ''';

        v2Models = parseModels(v2Schema);
        v2IndexedModels = parseModels(v2IndexSchema);
      });

      test('should support connection with @primaryKey on BELONGS_TO side', () {
        final postField = v2Models['Comment']!.fieldNamed('post');

        expect(
          postField.association,
          ModelAssociation.belongsTo(
            associatedType: 'Post',
            targetNames: ['postID'],
          ),
        );
      });

      test('should support connection with @primaryKey on HAS_MANY side', () {
        final commentsField = v2Models['Post']!.fieldNamed('comments');

        expect(
          commentsField.association,
          ModelAssociation.hasMany(
            associatedType: 'Comment',
            associatedFields: ['post'],
          ),
        );
      });

      test('should support connection with @index on HAS_MANY side', () {
        final commentsField = v2IndexedModels['Post']!.fieldNamed('comments');

        expect(
          commentsField.association,
          ModelAssociation.hasMany(
            associatedType: 'Comment',
            associatedFields: ['postID'],
          ),
        );
      });

      test('Should support connection with @index on BELONGS_TO side', () {
        final commentsField = v2IndexedModels['Post']!.fieldNamed('comments');

        expect(
          commentsField.association,
          ModelAssociation.hasMany(
            associatedType: 'Comment',
            associatedFields: ['postID'],
          ),
        );
      });
    });

    group('hasOne', () {
      late Map<String, ModelTypeDefinition> noFields;
      late Map<String, ModelTypeDefinition> withFields;

      setUpAll(() {
        const noFieldsSchema = '''
          type BatteryCharger @model {
            powerSource: PowerSource @hasOne
          }

          type PowerSource @model {
            id: ID!
            amps: Float!
            volts: Float!
          }''';

        const withFieldsSchema = '''
          type BatteryCharger @model {
            chargerID: ID!
            powerSourceID: ID
            powerSource: PowerSource @hasOne(fields: ["powerSourceID"])
          }

          type PowerSource @model {
            sourceID: ID! @primaryKey
            amps: Float!
            volts: Float!
          }''';

        noFields = parseModels(noFieldsSchema);
        withFields = parseModels(withFieldsSchema);
      });

      test('Should support @hasOne with no explicit primary key', () {
        final powerSourceField =
            noFields['BatteryCharger']!.fieldNamed('powerSource');

        expect(
          powerSourceField.association,
          ModelAssociation.hasOne(
            associatedType: 'PowerSource',
            associatedFields: ['id'],
            targetNames: ['batteryChargerPowerSourceId'],
          ),
        );
      });

      test('Should support @hasOne with an explicit primary key', () {
        final powerSourceField =
            withFields['BatteryCharger']!.fieldNamed('powerSource');

        expect(
          powerSourceField.association,
          ModelAssociation.hasOne(
            associatedType: 'PowerSource',
            associatedFields: ['sourceID'],
            targetNames: ['powerSourceID'],
          ),
        );
      });
    });

    group('belongsTo', () {
      late Map<String, ModelTypeDefinition> modelMap;

      setUpAll(() {
        const schema = '''
          type Project2 @model {
            id: ID!
            name: String
            team: Team2 @hasOne 
          } 

          type Team2 @model {
            id: ID!
            name: String!
            project: Project2! @belongsTo
          }''';

        modelMap = parseModels(schema);
      });

      test('Should support belongsTo and detect connected field', () {
        final projectField = modelMap['Team2']!.fieldNamed('project');

        expect(
          projectField.association,
          ModelAssociation.belongsTo(
            associatedType: 'Project2',
            targetNames: ['team2ProjectId'],
          ),
        );
      });
    });

    group('hasMany', () {
      late Map<String, ModelTypeDefinition> modelMap;

      setUpAll(() {
        const schema = '''
          type Blog @model {
            id: ID!
            name: String!
            posts: [Post] @hasMany
          }
          
          type Post @model {
            id: ID!
            title: String!
            blog: Blog @belongsTo
            comments: [Comment] @hasMany
          }
          
          type Comment @model {
            id: ID!
            post: Post @belongsTo
            content: String!
          }''';

        modelMap = parseModels(schema);
      });

      test('Should detect first has many', () {
        final postsField = modelMap['Blog']!.fieldNamed('posts');

        expect(
          postsField.association,
          ModelAssociation.hasMany(
            associatedType: 'Post',
            associatedFields: ['blogPostsId'],
          ),
        );
      });

      test('Should detect second has many', () {
        final commentsField = modelMap['Post']!.fieldNamed('comments');

        expect(
          commentsField.association,
          ModelAssociation.hasMany(
            associatedType: 'Comment',
            associatedFields: ['postCommentsId'],
          ),
        );
      });

      test('Should detect first belongsTo', () {
        final blogField = modelMap['Post']!.fieldNamed('blog');

        expect(
          blogField.association,
          ModelAssociation.belongsTo(
            associatedType: 'Blog',
            targetNames: ['blogPostsId'],
          ),
        );
      });

      test('Should detect second belongsTo', () {
        final postField = modelMap['Comment']!.fieldNamed('post');

        expect(
          postField.association,
          ModelAssociation.belongsTo(
            associatedType: 'Post',
            targetNames: ['postCommentsId'],
          ),
        );
      });
    });

    group('CPK', () {
      group('hasOne', () {
        test('uni-directional', () {
          const schema = '''
            type Project @model {
              projectId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
              team: Team @hasOne
            }
            type Team @model {
              teamId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
            }
          ''';

          final models = parseModels(schema);
          final projectTeamField = models['Project']!.fieldNamed('team');
          expect(
            projectTeamField.association,
            ModelAssociation.hasOne(
              associatedType: 'Team',
              associatedFields: ['teamId', 'name'],
              targetNames: ['projectTeamTeamId', 'projectTeamName'],
            ),
          );
        });

        test('bi-directional', () {
          const schema = '''
            type Project @model {
              projectId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
              team: Team @hasOne
            }
            type Team @model {
              teamId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
              project: Project @belongsTo
            }
          ''';

          final models = parseModels(schema);

          final projectTeamField = models['Project']!.fieldNamed('team');
          expect(
            projectTeamField.association,
            ModelAssociation.hasOne(
              associatedType: 'Team',
              associatedFields: ['project'],
              targetNames: ['projectTeamTeamId', 'projectTeamName'],
            ),
          );

          final teamProjectField = models['Team']!.fieldNamed('project');
          expect(
            teamProjectField.association,
            ModelAssociation.belongsTo(
              associatedType: 'Project',
              targetNames: ['teamProjectProjectId', 'teamProjectName'],
            ),
          );
        });
      });

      group('hasMany', () {
        test('uni-directional', () {
          const schema = '''
            type Post @model {
              postId: ID! @primaryKey(sortKeyFields:["title"])
              title: String!
              comments: [Comment] @hasMany
            }
            type Comment @model {
              commentId: ID! @primaryKey(sortKeyFields:["content"])
              content: String!
            }
          ''';

          final models = parseModels(schema);

          final postCommentsField = models['Post']!.fieldNamed('comments');
          expect(
            postCommentsField.association,
            ModelAssociation.hasMany(
              associatedType: 'Comment',
              associatedFields: ['postCommentsPostId', 'postCommentsTitle'],
            ),
          );
        });

        test('uni-directional w/ index', () {
          const schema = '''
            type Post @model {
              postId: ID! @primaryKey(sortKeyFields:["title"])
              title: String!
              comments: [Comment] @hasMany(indexName: "byPost", fields:["postId", "title"])
            }
            type Comment @model {
              commentId: ID! @primaryKey(sortKeyFields:["content"])
              content: String!
              postId: ID! @index(name: "byPost", sortKeyFields:["postTitle"])
              postTitle: String!
            }
          ''';

          final models = parseModels(schema);

          final postCommentsField = models['Post']!.fieldNamed('comments');
          expect(
            postCommentsField.association,
            ModelAssociation.hasMany(
              associatedType: 'Comment',
              associatedFields: ['postId'],
            ),
          );
        });

        test('bi-directional', () {
          const schema = '''
            type Post @model {
              postId: ID! @primaryKey(sortKeyFields:["title"])
              title: String!
              comments: [Comment] @hasMany
            }
            type Comment @model {
              commentId: ID! @primaryKey(sortKeyFields:["content"])
              content: String!
              post: Post @belongsTo
            }
          ''';

          final models = parseModels(schema);

          final postCommentsField = models['Post']!.fieldNamed('comments');
          expect(
            postCommentsField.association,
            ModelAssociation.hasMany(
              associatedType: 'Comment',
              associatedFields: ['postCommentsPostId', 'postCommentsTitle'],
            ),
          );

          final commentPostField = models['Comment']!.fieldNamed('post');
          expect(
            commentPostField.association,
            ModelAssociation.belongsTo(
              associatedType: 'Post',
              targetNames: ['postCommentsPostId', 'postCommentsTitle'],
            ),
          );
        });

        test('bi-directional w/ index', () {
          const schema = '''
            type Post @model {
              postId: ID! @primaryKey(sortKeyFields:["title"])
              title: String!
              comments: [Comment] @hasMany(indexName: "byPost", fields:["postId", "title"])
            }
            type Comment @model {
              commentId: ID! @primaryKey(sortKeyFields:["content"])
              content: String!
              post: Post @belongsTo(fields:["postId", "postTitle"])
              postId: ID! @index(name: "byPost", sortKeyFields:["postTitle"])
              postTitle: String!
            }
          ''';

          final models = parseModels(schema);

          final postCommentsField = models['Post']!.fieldNamed('comments');
          expect(
            postCommentsField.association,
            ModelAssociation.hasMany(
              associatedType: 'Comment',
              associatedFields: ['post'],
            ),
          );

          final commentPostField = models['Comment']!.fieldNamed('post');
          expect(
            commentPostField.association,
            ModelAssociation.belongsTo(
              associatedType: 'Post',
              targetNames: ['postId', 'postTitle'],
            ),
          );
        });
      });

      group('belongsTo', () {
        test('multiple hasOne', () {
          const schema = '''
            type Project @model {
              projectId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
              devTeam: Team @hasOne
              productTeam: Team @hasOne
            }
            type Team @model {
              teamId: ID! @primaryKey(sortKeyFields:["name"])
              name: String!
              project: Project @belongsTo
            }
          ''';

          final models = parseModels(schema);

          final projectDevTeamField = models['Project']!.fieldNamed('devTeam');
          expect(
            projectDevTeamField.association,
            ModelAssociation.hasOne(
              associatedType: 'Team',
              associatedFields: ['project'],
              targetNames: ['projectDevTeamTeamId', 'projectDevTeamName'],
            ),
          );

          final projectProductTeamField =
              models['Project']!.fieldNamed('productTeam');
          expect(
            projectProductTeamField.association,
            ModelAssociation.hasOne(
              associatedType: 'Team',
              associatedFields: ['project'],
              targetNames: [
                'projectProductTeamTeamId',
                'projectProductTeamName'
              ],
            ),
          );

          final teamProjectField = models['Team']!.fieldNamed('project');
          expect(
            teamProjectField.association,
            ModelAssociation.belongsTo(
              associatedType: 'Project',
              targetNames: ['teamProjectProjectId', 'teamProjectName'],
            ),
          );
        });
      });
    });
  });
}
