# Flutter Resume

View it live at https://blissful-kepler-4fceb8.netlify.com/#/


# Summary

An example web project with the `HomeViewSmall` screen intentionally left unfinished so you can fork the project and create the small view for yourself.

# Development

1. Get Flutter set up on your machine, then open VSCode and select Chrome as your device to use by either:

- `CMD + Shift + P` and "Select Device"
- Click the device selector in the bottom right of VSCode

2. Reduce the size of your browser below 1100px to show the `HomeViewSmall` screen.

3. Start using the pre-built components in the `lib/presentation/components` folder, create new ones to work on mobile, or edit them in place!

It's up to you how you build your mobile view. Happy coding!


## Build
Once you're done with all your updates. Make sure to run `flutter build web` to generate your web project under the `build/web` folder. This folder will contain your `index.html` and `assets`.

## NNBD
### This project has been updated to use non-null by default. Most notable changes:
- Use `required` instead of `@required`
- Mark values that can be null with `?` after the type. E.g. `String?`, `double?`, `MyClass?`
- On values that can be null, make sure to use null safe traversal and provide a fallback when accessing properties. E.g. `myValue?.floor() ?? 0.0` rather than `myValue.floor()`