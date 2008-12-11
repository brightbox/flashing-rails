# Flashing Rails

## Description

Adds a method to your views to output all flash messages

## Usage

Add `flash_messages` where you want the list to appear. It outputs an unordered list. Each list item has a class of the type of flash message added. See example below.

Optionally add `:id => "foo"` or `:class => "bar"` to set the id/class of the list in HTML. Default is an id of "Flash" with no class.

### Example

#### Controller
	
	flash[:notice] = "Hi people."
	flash[:warning] = "I am warning you of impending doom."
	flash[:error] = "You forgot to blink whilst reading this."

#### Layout

	<%= flash_messages %>

#### Output
	
	<ul id="flash">
		<li class="notice">Hi people.</li>
		<li class="warning">I am warning you of impending doom.</li>
		<li class="error">You forgot to blink whilst reading this.</li>
	</ul>