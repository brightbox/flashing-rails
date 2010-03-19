# Flashing Rails

## Description

Adds a method to your views to output all flash messages.

## Install

	ruby script/plugin install git://github.com/brightbox/flashing-rails.git

## Usage

Add `flash_messages` where you want the list to appear. It outputs an unordered list. Each list item has a class of the type of flash message added. See example below.

Optionally add `:id => "foo"` or `:class => "bar"` to set the id/class of the list in HTML. Default is an id of "Flash" with no class.

Flashing Rails also handles `flash[:foo]` being an array of messages to output. In this case it will output them all as individual flash messages, with the same HTML class.

### Example

#### Controller
	
	flash[:notice] = ["Hi people", "Wotcha"]
	flash[:warning] = "I am warning you of impending doom"
	flash[:error] = "You forgot to blink whilst reading this"

#### Layout

	<%= flash_messages %>

#### Output
	
	<ul id="flash">
		<li class="notice">Hi people</li>
		<li class="notice">Wotcha</li>
		<li class="warning">I am warning you of impending doom</li>
		<li class="error">You forgot to blink whilst reading this</li>
	</ul>

## Released under the MIT Licence

Copyright (c) 2008 Brightbox Systems Ltd 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

See <http://www.brightbox.co.uk/> for contact details.  