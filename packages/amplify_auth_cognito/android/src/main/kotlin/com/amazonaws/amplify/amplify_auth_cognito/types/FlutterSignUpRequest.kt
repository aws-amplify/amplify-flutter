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
    val userAttributes: AuthSignUpOptions = formatUserAttributes(map["userAttributes"] as HashMap<String, String>);
    val providerOptions: HashMap<String, *>? = map["providerOptions"] as HashMap<String, *>?;

    fun setUserName(@NonNull request: HashMap<String, *>): String {
        var username: String = "";
        if (request.containsKey("providerOptions")) {
            var providerOptions = request.get("providerOptions") as HashMap<String, *>;
            var userAttributes = request.get("userAttributes") as HashMap<String, *>;
            if (providerOptions != null && providerOptions.containsKey("usernameAttribute")) {
                when (providerOptions.get("usernameAttribute")) {
                    "email" -> {
                        username = userAttributes.get("email") as String;
                    }
                    "phone_number" -> {
                        username = userAttributes.get("phone_number") as String;
                    }
                }
            }
        } else {
            username = request.get("username") as String;
        }
        return username;
    };

    fun formatUserAttributes(@NonNull attributes: HashMap<String, String>): AuthSignUpOptions {
        var options: AuthSignUpOptions.Builder<*> =  AuthSignUpOptions.builder();
        var authUserAttributes: MutableList<AuthUserAttribute> = mutableListOf();
        var attributeMethods = AuthUserAttributeKey::class.java.declaredMethods;

        attributes.forEach { (key, value) ->
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
        return options.build();
    }

    // Amplify Android expects camel case, while iOS expects snake.  So at least one plugin implementation should convert.
    fun convertSnakeToCamel(@NonNull string: String): String {
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
        fun validate(req : HashMap<String, *>): Boolean {
            var valid: Boolean = true;
            if (!req.containsKey("userAttributes")) {
                valid = false;
            }
            if (!req.containsKey("password")) {
                valid = false;
            }
            return valid;
        }
    }

}

