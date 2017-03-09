# What3Words

What3Words API Client https://docs.what3words.com/api/v2/

## Examples

### Rx: Forward geocode
```Swift
// Forward geocodes a 3 word address
let provider = RxMoyaProvider<W3W>()
provider.request(.forward(address: "index.home.raft", key: "XXX123"))
    .filterSuccessfulStatusCodes()
    .mapJSON()
    .subscribe(
      onNext: { result in
        print(result)
      },
      onError: { error in
        print(error.localizedDescription)
      }
    ).addDisposableTo(disposeBag)
```
