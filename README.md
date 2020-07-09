# About
The purpose of this app is to explore how the implementation of the MVVM (Model-View-ViewModel) pattern in Flutter differs from its usage in native Android development.

## Approach

The BLoC (Business Logic Component) pattern works much like the MVVM pattern but instead of a ViewModel, a BLoC is situated between the UI and the data layer. However, instead of using LiveData and DataBinding, the BLoC uses Streams and StreamBuilders. 
Just like with native Android development, a repository can be used to abstract the data source from the business logic by serving as a communication bridge between the BLoC and the data layer.
To decouple the code even further, a dependency injection library like [inject.dart](https://github.com/google/inject.dart) should be used but has been neglected in this case to keep the focus on the implementation of the design pattern. 
