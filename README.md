# zhihudailyAPI
zhihu daily API used in [知了](http://6133studio.com/cicada.html>)

---

[知了](http://6133studio.com/cicada.html>) is a zhihu daily client both on Mac and iPad. Only three necessary APIs here.

### Installation

#### Manually

Download and drag the `SRC` folder into your Xcode project

#### CocoaPods
Add `zhihudailyAPI` to your Podfile and run pod install.

### Dependency

- AFNetWorking

### Interface

    - (void)getLatestPostsSuccess:(void (^)(NSString *date, NSArray *posts))success
                          failure:(void (^)(NSError *error))failure;

    - (void)getPostsBefore:(NSString *)date
                   success:(void (^)(NSString *date, NSArray *posts))success
                   failure:(void (^)(NSError *error))failure;

    - (void)getPostContentByID:(NSString *)postID
                       success:(void (^)(CICPostContentModel *content))success
                       failure:(void (^)(NSError *error))failure;

### TODO

- more API supported

### Contributing
- Fork this repo and clone it.
- Open a pull request.

### MIT license
Copyright (c) 2014 61 &lt;61upup@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the &quot;Software&quot;), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
