// Source: https://gist.github.com/MartinMoizard/8aecd9acd1c30b5958fef0b12bb7ee15#file-viewmodeltype-swift

protocol ViewModelType {
  associatedtype Input
  associatedtype Output

  var input: Input { get }
  var output: Output { get }
}
