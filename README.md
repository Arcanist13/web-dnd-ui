# WebDndUi

User Interface for a 5E D&D at the table assistant. Including class, race, and spell information for quick reference.

## Project Structure

### Core

Location for singleton components and services used at the higher levels of the application.

### Modules

Location for the main views and associated components of the website, which are specific to the implementation. Each sub directory should containe it's own components, models and services as required by that view.

### Shared

Location for generic shared components, services and models. These are used in various places in the code base and should be extensible and able to be used/applied anywhere and in any project.

## How To
### Development server

Run `npm run start` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

### Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

### Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).
