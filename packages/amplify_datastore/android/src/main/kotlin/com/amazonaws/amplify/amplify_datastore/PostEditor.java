package com.amazonaws.amplify.amplify_datastore;

import com.amplifyframework.core.model.annotations.BelongsTo;

import java.util.List;
import java.util.UUID;
import java.util.Objects;

import androidx.core.util.ObjectsCompat;

import com.amplifyframework.core.model.Model;
import com.amplifyframework.core.model.annotations.Index;
import com.amplifyframework.core.model.annotations.ModelConfig;
import com.amplifyframework.core.model.annotations.ModelField;
import com.amplifyframework.core.model.query.predicate.QueryField;

import static com.amplifyframework.core.model.query.predicate.QueryField.field;

/** This is an auto generated class representing the PostEditor type in your schema. */
@SuppressWarnings("all")
@ModelConfig(pluralName = "PostEditors")
// @Index(name = "byPost", fields = {"postID","editorID"})
@Index(name = "byEditor", fields = {"editorID","postID"})
public final class PostEditor implements Model {
  public static final QueryField ID = field("id");
  public static final QueryField POST = field("postID");
  public static final QueryField EDITOR = field("editorID");
  private final @ModelField(targetType="ID", isRequired = true) String id;
  private final @ModelField(targetType="Post", isRequired = true) @BelongsTo(targetName = "postID", type = Post.class) Post post;
  private final @ModelField(targetType="User", isRequired = true) @BelongsTo(targetName = "editorID", type = User.class) User editor;
  public String getId() {
      return id;
  }
  
  public Post getPost() {
      return post;
  }
  
  public User getEditor() {
      return editor;
  }
  
  private PostEditor(String id, Post post, User editor) {
    this.id = id;
    this.post = post;
    this.editor = editor;
  }
  
  @Override
   public boolean equals(Object obj) {
      if (this == obj) {
        return true;
      } else if(obj == null || getClass() != obj.getClass()) {
        return false;
      } else {
      PostEditor postEditor = (PostEditor) obj;
      return ObjectsCompat.equals(getId(), postEditor.getId()) &&
              ObjectsCompat.equals(getPost(), postEditor.getPost()) &&
              ObjectsCompat.equals(getEditor(), postEditor.getEditor());
      }
  }
  
  @Override
   public int hashCode() {
    return new StringBuilder()
      .append(getId())
      .append(getPost())
      .append(getEditor())
      .toString()
      .hashCode();
  }
  
  @Override
   public String toString() {
    return new StringBuilder()
      .append("PostEditor {")
      .append("id=" + String.valueOf(getId()) + ", ")
      .append("post=" + String.valueOf(getPost()) + ", ")
      .append("editor=" + String.valueOf(getEditor()))
      .append("}")
      .toString();
  }
  
  public static PostStep builder() {
      return new Builder();
  }
  
  /** 
   * WARNING: This method should not be used to build an instance of this object for a CREATE mutation.
   * This is a convenience method to return an instance of the object with only its ID populated
   * to be used in the context of a parameter in a delete mutation or referencing a foreign key
   * in a relationship.
   * @param id the id of the existing item this instance will represent
   * @return an instance of this model with only ID populated
   * @throws IllegalArgumentException Checks that ID is in the proper format
   */
  public static PostEditor justId(String id) {
    try {
      UUID.fromString(id); // Check that ID is in the UUID format - if not an exception is thrown
    } catch (Exception exception) {
      throw new IllegalArgumentException(
              "Model IDs must be unique in the format of UUID. This method is for creating instances " +
              "of an existing object with only its ID field for sending as a mutation parameter. When " +
              "creating a new object, use the standard builder method and leave the ID field blank."
      );
    }
    return new PostEditor(
      id,
      null,
      null
    );
  }
  
  public CopyOfBuilder copyOfBuilder() {
    return new CopyOfBuilder(id,
      post,
      editor);
  }
  public interface PostStep {
    EditorStep post(Post post);
  }
  

  public interface EditorStep {
    BuildStep editor(User editor);
  }
  

  public interface BuildStep {
    PostEditor build();
    BuildStep id(String id) throws IllegalArgumentException;
  }
  

  public static class Builder implements PostStep, EditorStep, BuildStep {
    private String id;
    private Post post;
    private User editor;
    @Override
     public PostEditor build() {
        String id = this.id != null ? this.id : UUID.randomUUID().toString();
        
        return new PostEditor(
          id,
          post,
          editor);
    }
    
    @Override
     public EditorStep post(Post post) {
        Objects.requireNonNull(post);
        this.post = post;
        return this;
    }
    
    @Override
     public BuildStep editor(User editor) {
        Objects.requireNonNull(editor);
        this.editor = editor;
        return this;
    }
    
    /** 
     * WARNING: Do not set ID when creating a new object. Leave this blank and one will be auto generated for you.
     * This should only be set when referring to an already existing object.
     * @param id id
     * @return Current Builder instance, for fluent method chaining
     * @throws IllegalArgumentException Checks that ID is in the proper format
     */
    public BuildStep id(String id) throws IllegalArgumentException {
        this.id = id;
        
        try {
            UUID.fromString(id); // Check that ID is in the UUID format - if not an exception is thrown
        } catch (Exception exception) {
          throw new IllegalArgumentException("Model IDs must be unique in the format of UUID.",
                    exception);
        }
        
        return this;
    }
  }
  

  public final class CopyOfBuilder extends Builder {
    private CopyOfBuilder(String id, Post post, User editor) {
      super.id(id);
      super.post(post)
        .editor(editor);
    }
    
    @Override
     public CopyOfBuilder post(Post post) {
      return (CopyOfBuilder) super.post(post);
    }
    
    @Override
     public CopyOfBuilder editor(User editor) {
      return (CopyOfBuilder) super.editor(editor);
    }
  }
  
}
