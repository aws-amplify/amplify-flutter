package com.amplifyframework.datastore.generated.model;

import com.amplifyframework.core.model.temporal.Temporal;

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

/** This is an auto generated class representing the PostTest type in your schema. */
@SuppressWarnings("all")
@ModelConfig(pluralName = "PostTests")
public final class PostTest implements Model {
  public static final QueryField ID = field("id");
  public static final QueryField TITLE = field("title");
  public static final QueryField RATING = field("rating");
  public static final QueryField CREATED = field("created");
  private final @ModelField(targetType="ID", isRequired = true) String id;
  private final @ModelField(targetType="String", isRequired = true) String title;
  private final @ModelField(targetType="Int", isRequired = true) Integer rating;
  private final @ModelField(targetType="AWSDate", isRequired = true) Temporal.Date created;
  public String getId() {
      return id;
  }
  
  public String getTitle() {
      return title;
  }
  
  public Integer getRating() {
      return rating;
  }
  
  public Temporal.Date getCreated() {
      return created;
  }
  
  private PostTest(String id, String title, Integer rating, Temporal.Date created) {
    this.id = id;
    this.title = title;
    this.rating = rating;
    this.created = created;
  }
  
  @Override
   public boolean equals(Object obj) {
      if (this == obj) {
        return true;
      } else if(obj == null || getClass() != obj.getClass()) {
        return false;
      } else {
      PostTest postTest = (PostTest) obj;
      return ObjectsCompat.equals(getId(), postTest.getId()) &&
              ObjectsCompat.equals(getTitle(), postTest.getTitle()) &&
              ObjectsCompat.equals(getRating(), postTest.getRating()) &&
              ObjectsCompat.equals(getCreated(), postTest.getCreated());
      }
  }
  
  @Override
   public int hashCode() {
    return new StringBuilder()
      .append(getId())
      .append(getTitle())
      .append(getRating())
      .append(getCreated())
      .toString()
      .hashCode();
  }
  
  @Override
   public String toString() {
    return new StringBuilder()
      .append("PostTest {")
      .append("id=" + String.valueOf(getId()) + ", ")
      .append("title=" + String.valueOf(getTitle()) + ", ")
      .append("rating=" + String.valueOf(getRating()) + ", ")
      .append("created=" + String.valueOf(getCreated()))
      .append("}")
      .toString();
  }
  
  public static TitleStep builder() {
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
  public static PostTest justId(String id) {
    try {
      UUID.fromString(id); // Check that ID is in the UUID format - if not an exception is thrown
    } catch (Exception exception) {
      throw new IllegalArgumentException(
              "Model IDs must be unique in the format of UUID. This method is for creating instances " +
              "of an existing object with only its ID field for sending as a mutation parameter. When " +
              "creating a new object, use the standard builder method and leave the ID field blank."
      );
    }
    return new PostTest(
      id,
      null,
      null,
      null
    );
  }
  
  public CopyOfBuilder copyOfBuilder() {
    return new CopyOfBuilder(id,
      title,
      rating,
      created);
  }
  public interface TitleStep {
    RatingStep title(String title);
  }
  

  public interface RatingStep {
    CreatedStep rating(Integer rating);
  }
  

  public interface CreatedStep {
    BuildStep created(Temporal.Date created);
  }
  

  public interface BuildStep {
    PostTest build();
    BuildStep id(String id) throws IllegalArgumentException;
  }
  

  public static class Builder implements TitleStep, RatingStep, CreatedStep, BuildStep {
    private String id;
    private String title;
    private Integer rating;
    private Temporal.Date created;
    @Override
     public PostTest build() {
        String id = this.id != null ? this.id : UUID.randomUUID().toString();
        
        return new PostTest(
          id,
          title,
          rating,
          created);
    }
    
    @Override
     public RatingStep title(String title) {
        Objects.requireNonNull(title);
        this.title = title;
        return this;
    }
    
    @Override
     public CreatedStep rating(Integer rating) {
        Objects.requireNonNull(rating);
        this.rating = rating;
        return this;
    }
    
    @Override
     public BuildStep created(Temporal.Date created) {
        Objects.requireNonNull(created);
        this.created = created;
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
    private CopyOfBuilder(String id, String title, Integer rating, Temporal.Date created) {
      super.id(id);
      super.title(title)
        .rating(rating)
        .created(created);
    }
    
    @Override
     public CopyOfBuilder title(String title) {
      return (CopyOfBuilder) super.title(title);
    }
    
    @Override
     public CopyOfBuilder rating(Integer rating) {
      return (CopyOfBuilder) super.rating(rating);
    }
    
    @Override
     public CopyOfBuilder created(Temporal.Date created) {
      return (CopyOfBuilder) super.created(created);
    }
  }
  
}
