module.exports = [
    {
        languageOptions: {
            ecmaVersion: "latest",
            sourceType: "module",
            globals: {
                $: "readonly",
                React: "readonly",
                ReactDOM: "readonly",
                console: "readonly",
                document: "readonly",
                window: "readonly",
                jQuery: "readonly"
            }
        },
        rules: {
            "indent": ["error", 4],
            "linebreak-style": ["error", "unix"],
            "quotes": ["error", "double"],
            "semi": ["error", "always"],
            "no-unused-vars": ["warn", { "argsIgnorePattern": "^_" }]
        }
    }
];

