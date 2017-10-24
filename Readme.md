# What3Words

What3Words API Client https://docs.what3words.com/api/v2/

## Examples

### Rx: Forward geocode
```Swift
// Forward geocodes a 3 word address
let provider = MoyaProvider<W3W>()
provider.rx.request(.forward(address: "index.home.raft", key: "XXX123"))
    .filterSuccessfulStatusCodes()
    .mapJSON()
    .subscribe(
      onSuccess: { result in
        print(result)
      },
      onError: { error in
        print(error.localizedDescription)
      }
    )
    .disposed(by: disposeBag)
```
