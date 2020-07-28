# flutterProviderLearn

Umar's flutter provider project.

## Run it

type `flutter pub get` and then `flutter run`.

## Learning Outcomes

* Provider is a statemanagement tool in flutter.

* Provider basically enables the MVC architecture is flutter. You can separate your
  business logic from the UI of the with it.

* As seen in this project, I am using three dirs in my libs folders. screens for one complete
  scaffold screen. state for provider state model class. utils for some functions which
  my project may use.

* Talking of the API, what we do is wrap our main app inside a provider, MultiProvider is
  obvious choice for that in which we can pass all kind of providers our app will use. And
  then finally we use `Provider.of(context).blahblahblah` in our widgets to access that state
  from anywhere we want.
