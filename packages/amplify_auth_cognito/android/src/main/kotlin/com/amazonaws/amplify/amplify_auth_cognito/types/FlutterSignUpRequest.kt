package com.amazonaws.amplify.amplify_auth_cognito.types

import androidx.annotation.NonNull
import com.amplifyframework.auth.AuthUserAttribute
import com.amplifyframework.auth.AuthUserAttributeKey
import com.amplifyframework.auth.options.AuthSignUpOptions
import java.lang.reflect.Method

data class FlutterSignUpRequest(val map: HashMap<String, *>) {
    var standardAttributes: Array<String> = arrayOf("address", "birthdate", "email", "family_name", "gender", "given_name", "locale", "middle_name", "name", "nickname", "phone_number", "preferred_username", "picture", "profile", "updated_at", "website", "zoneinfo")
    val username: String = setUserName(map);
    val password: String = map["password"] as String;
    val options: AuthSignUpOptions = formatOptions(map["options"] as HashMap<String, String>);

    private fun setUserName(@NonNull request: HashMap<String, *>): String {
        var username: String = "";
        if (request.containsKey("options")) {
            var options = request["options"] as HashMap<String, *>;
            var userAttributes = options["userAttributes"] as HashMap<String, *>;
            if (options != null && options.containsKey("usernameAttribute")) {
                when (options["usernameAttribute"]) {
                    "email" -> {
                        username = userAttributes["email"] as String;
                    }
                    "phone_number" -> {
                        username = userAttributes["phone_number"] as String;
                    }
                }
            } else {
                username = request["username"] as String;
            }
        } else if (request.containsKey("username")) {
            username = request["username"] as String;
        }
        return username;
    };

    private fun formatOptions(@NonNull rawOptions: HashMap<String, String>): AuthSignUpOptions {
        var options: AuthSignUpOptions.Builder<*> =  AuthSignUpOptions.builder();
        var authUserAttributes: MutableList<AuthUserAttribute> = mutableListOf();
        var attributeMethods = AuthUserAttributeKey::class.java.declaredMethods;
        var validationData = rawOptions["validationData"];

        (rawOptions["userAttributes"] as HashMap<String, String>).forEach { (key, value) ->
            var keyCopy: String = key;
            if(!standardAttributes.contains(keyCopy)){
                if (!key.startsWith("custom:")){
                    keyCopy = "custom:" + keyCopy;
                }
                authUserAttributes.add(AuthUserAttribute(AuthUserAttributeKey.custom(keyCopy), value))
            } else {
                var t: Method = attributeMethods.asIterable().find { it.name.equals(convertSnakeToCamel(key)) } as Method;
                var attr: AuthUserAttributeKey = t.invoke(null) as AuthUserAttributeKey;
                authUserAttributes.add(AuthUserAttribute(attr, value));
            }
        }
        options.userAttributes(authUserAttributes);
        //TODO: Add validationData
        return options.build();
    }

    // Amplify Android expects camel case, while iOS expects snake.  So at least one plugin implementation should convert.
    private fun convertSnakeToCamel(@NonNull string: String): String {
        val camelCase = StringBuilder()
        var prevChar = '$'
        string.forEach {
            if(prevChar.equals('_')){
                camelCase.append(it.toUpperCase())
            }else if(!it.equals('_')){
                camelCase.append(it)
            }
            prevChar = it
        }
        return camelCase.toString();
    }

    companion object {
        fun validate(req : HashMap<String, *>?): Boolean {
            var valid: Boolean = true;
            if (req == null) {
                valid = false;
            }
            if (!(req?.get("options") as HashMap<String, String>).containsKey("userAttributes")) {
                valid = false;
            }
            if (!req.containsKey("password")) {
                valid = false;
            }
            return valid;
        }
    }

}

