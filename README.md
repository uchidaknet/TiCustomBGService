TiCustomBGService(){
==================================================
This is a Titanium module for iOS.  
Custom iOS Background Service.  

<a name="TOC">Table of Contents</a>
--------------------------------------------------
1. [Why](#Why)
1. [Usage](#Usage)
1. [License](#License)

<a name="Why">Why</a>
-------------------------------------------------- 
通常RegisterBackgroundServiceを複数回呼び出すと、どうやら古いサービスがキープされているようで、それが実行されるようだ。  
一度でもRegistしてしまうと、そのサービスをunRegistしても結果は同じだった。  
したがって古いサービスを呼ばないように、必ず新しいサービスがRegistされるようにしたモジュールを作った。  
TiAppおよびTiAppiOSProxyをCategoryによって拡張している。  
したがってモジュールを読込めば動的に既存クラスへ機能が追加される。  

**[[⬆]](#TOC)**

<a name="Usage">Usage</a>
--------------------------------------------------
```javascript
    var CustomBGService = require('net.uchidak.ticustombgservice');
    var service;
    service = Titanium.App.iOS.customRegisterBackgroundService({
                url : 'ui/handheld/BGService.js',
                title : paramVideoTitle,
                video : videoPlayer
            });
```

**[[⬆]](#TOC)**

<a name="License">License and Credits</a>
--------------------------------------------------
**TiCustomBGService**  
The MIT License (MIT)

Copyright (c) 2013 Keisuke Uchida

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

**[[⬆]](#TOC)**

};
==================================================
© 2013 [Keisuke Uchida](http://uchidak.net) All rights reserved.