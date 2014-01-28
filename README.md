## Native Transitions Plugin for Phonegap 3.0 or above

Emulating transitions are a thing of the past, you can now use real native page transitions directly from your JavaScript! Using this plugin you can fill like native transaction.

![ScreenShot](http://www.excellentwebworld.com/wp-content/uploads/2014/01/banner.jpg)

For Detail Plz Read [here](http://www.excellentwebworld.com//native-transitions-plugin-for-ios-phonegap).

### Automatically (CLI / Plugman)
Native Transitions Plugin is compatible with [Cordova Plugman](https://github.com/apache/cordova-plugman), compatible with [PhoneGap 3.0 CLI](http://docs.phonegap.com/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface_add_features), here's how it works with the CLI:
Step 1 : got Git or any cmd interface and follow your app path and enter this command
```
cordova plugin add https://github.com/mayurloved/native-ios-transitions.git

OR

phonegap plugin add https://github.com/mayurloved/native-ios-transitions.git
```
Step 2:Grab a copy of Mytransition.js from www folder,add it to your project and reference it in `index.html`:

```html
    <script type="text/javascript" src="js/Mytransition.js"></script>
```
### There are Diffrent Transitions Effect Are Available 

#### Flip

```js
var duration = 0.6, // animation time in seconds
direction = "right"; // animation direction - left || right
nativetransitions.flip(duration, direction, onComplete);
```

#### Curl

```js
var duration = 0.6, // animation time in seconds
direction = "down"; // animation direction - up || down
nativetransitions.curl(duration, direction, onComplete);
```

#### Fade
```js
var duration = 0.6 // animation time in seconds
nativetransitions.fade(duration, onComplete);
```

## Example
For Download The Full Demo Example got to example\eww\platforms\ios or Download from here [here](http://www.excellentwebworld.com/wp-content/uploads/2014/01/eww.zip).
Here's an example of how I suggest you use the plugin in your code, so that you get a realistic transition:

```
<!DOCTYPE html>
<!--
    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
     KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
-->
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="format-detection" content="telephone=no" />
        <!-- WARNING: for iOS 7, remove the width=device-width and height=device-height attributes. See https://issues.apache.org/jira/browse/CB-4323 -->
        <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, target-densitydpi=device-dpi" />
        <link rel="stylesheet" type="text/css" href="css/index.css" />
         <link rel="stylesheet" type="text/css" href=" http://code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.css" />
        
        <title>EWW</title>
      
       <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
       <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
       <script type="text/javascript" src="http://code.jquery.com/mobile/1.4.0/jquery.mobile-1.4.0.min.js"></script>
        <script type="text/javascript" src="cordova.js"></script>
        <script type="text/javascript" src="js/index.js"></script>
         <script type="text/javascript" src="js/nativetransitions.js"></script>
             <script type="text/javascript" src="js/Mytransition.js"></script>
        <style>
            
            .ui-page{
                background-color:#10282A !important;
                width:100%;
                height:100%;
                text-align:center;
            }
        a{    color: #FFFFFF !important;
            font-size: 11px !important;
            text-align: center;
            text-shadow: none;
            width: 100% !important;}
            </style>
        <script>
                      
        function page(effect,direction,pageid)
        {
            pageid="#"+pageid;
            setTimeout(function() {
                       $.mobile.changePage(pageid, {} );
                       },50);
                       if(effect=="curl")
                       {
                           window.plugins.Mytransition.curl(0.5,direction);
                       }
                       else if(effect=="fade")
                       {
                           window.plugins.Mytransition.fade(0.5,direction);
                       }
                       else if(effect=="flip")
                       {
                           window.plugins.Mytransition.flip(0.5,direction);
                       }
                       
        }

            </script>
    </head>
    <body>
        <div data-role="page" id="page1">
            
            <div data-role="header">
                <h1>Page Title</h1>
            </div><!-- /header -->
            
            <div data-role="content">
                <p>This is Page 1</p>
                
                 <a onclick='page("curl","down","page2");'>Change Page With Curl Top Effect</a><br><br>
                 <a onclick='page("curl","up","page2");'>Change Page With Curl Down Effect</a><br><br>
                 <a onclick='page("flip","left","page2");'>Change Page with Flip Left</a><br><br>
                 <a onclick='page("flip","Right","page2");'>Change Page with Flip Right</a><br><br>
                 <a onclick='page("fade","left","page2");'>Change Page with Fade</a>
                <br>
                <br>
           </div><!-- /content -->
            
            <div data-role="footer">
                <h4>Page Footer</h4>
            </div><!-- /footer -->
        </div><!-- /page -->
        <div data-role="page" id="page2">
            
            <div data-role="header">
                <h1>Page Title</h1>
            </div><!-- /header -->
            
            <div data-role="content">
                <p>This is Page 2</p>
                <a onclick='page("fade","left","page1");'>Goto Page1</a>
            </div><!-- /content -->
            
            <div data-role="footer" style="position:fixed;bottom:0;">
                <h4>Page Footer</h4>
            </div><!-- /footer -->
        </div><!-- /page -->

    </body>
</html>

```

## Platform Support

Currently iOS only (version 4+) and tested in ios7.

## License
Our Special Thanks to Lee Crossley.

[![Mayur Panchal](http://excellentwebworld.com/wp-content/uploads/2013/07/logo.png)](http://www.excellentwebworld.com/ "Blogging")
