Redux MVVM
===


## Event streams

In a complex application there are three primary streams of events

- User Interface with Redux and ReactiveCocoa
- Database events
- Application error/crash events

Keeping the two separated inside the iOS part keeps the application code cleaner. As all events are timestamped the two event streams can be merged and replayed for remote debugging


## MVVM

A view model has the responsibility for subscribing to redux state updates, sending redux actions, making database requests.  

All of the responsibilities of the View model *could* be performed by the View Controller, but there are numerous advantages to using a view model in front of the view controller.  A view model is a *logic view*, which can be easily tested.

View model is a mediator between the view controller, global UI state and the database.  ReactiveCocoa is used as the plumbing between components.


View Controller - Producer of UI events
View Model - Subscribes to View Controller events. Sends actions to the global dispatcher. Could be a singleton?
Dispatcher - All view models listen to the dispatcher


## Combined message log

It would be cool if there was a global message queue that processes all things that occur during the running of the app.  This log of messages can be posted to a server for usage analysis and debugging.
