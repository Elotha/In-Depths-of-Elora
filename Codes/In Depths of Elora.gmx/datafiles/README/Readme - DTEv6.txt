  Dynamic Textbox Engine v6
Created by nacho_chicken

(1) What's new to v6
(2) Features
(3) Why you should use this engine
(4) FAQs
(5) Contact me
(6) Rights stuff nobody reads but they really should



(1) What's new to v6

- Bugs from v5 fixed
 Fixed bugs include: Y/N questions causing sound loops, textbox using room_height instead of view_hport, 1-frame lag on textbox creation

- Code cleaned up
 Monstrously sized Execute code blocks are split up and labeled, scripts are separated by core functions and editable features

- Easier to modify look of textbox
 The look of the entire textbox can be customized in the "Customize textbox" section of the textbox object's create event

- Multiple text file support
 Great for separation of text groups before your entire game text is done

- Skip to end of text
 With the option of making it impossible to do so

- Only one line of code to call textbox
 textbox_create(fname, pointer, can skip);

- Automatic textbox pointers
 The textbox now searches and finds the starting line of what you're looking for, regardless of how many lines are in between



(2) Features

- Typewriter-style text
 Should be a standard feature in all textbox engines

- Quick commands for effects
 Short, easy-to-type commands to activate the various effects mentioned here

- Plays "voices" while typing text
 Support for High, Medium, Low, and Thought voices, as well as ability to turn voices off

- Changing typing speed
 To emulate changes tone, inflection, and other delivery aspect normally restricted to speech

- Pauses
 Wherever you want, however long you want them

- Play sound effects
 For emphasis on certain words (EG: OBJECTION!) or for voice acting support

- Colored text
 To highlight certain words or phrases

- Name box
 A box for the name of the character who is speaking, with the option to disable it

- Yes/No in-textbox questions
 With the option to change the text of "Yes" and "No"

- Question box
 Visual-Novel-styled question box with built-in support for up to 6 responses

- Cut-ins
 Images of characters in the current "scene"

- Animated cut-ins with separate parts
 Cut-ins can be animated, as well as have animated parts (eyes, mouth, etc.) split into several separately-animating sprites for saving space

- Variables
 Print varaibles to text or change them from the textbox

- Text stored in .txt files
 Makes finding typos easy and fixes annoying problems putting "multiple 'quotes in one "sentence"'"



(3) Why you should use this engine

If you use included features such as text speed changes and pauses, you can closely capture aspects of delivery normally limited to the spoken word.
It gives your text much more power and emphasis, without needing to resort to expensive/filesize-inflating/dodgy quality voice acting.
The entire look of the textbox can be customized from just one section of code. There are several demos included to get you started.
Once they are uploaded, you can find various video tutorials on my YouTube Channel: (https://www.youtube.com/user/nacho1zero1)

If you want an engine that gives you the power to do what you need to easily and quickly: you just downloaded it.



(4) FAQs

Q: Why doesn't this textbox automatically add new lines?
A: It's bad practice to rely on auto-formatting text.  Doing it yourself doesn't take too long, and adding
new lines at logical
points makes text look so
much cleaner and is a lot
easier to read than this
kind of garbage you've been
reading until here.

Q: Wow, there's so much code.  How could I possibly learn how to use this?
A: You're not really supposed to understand how the internals work.  It's made so you can quickly mod everything how you want it, disable
anything you don't need, and plug it into your game.

Q: How come it uses .txt files for text?
A: You can edit your game's script in your favorite text editor, it's easy to support multiple languages, they're easy to encrypt, and it bypasses
GM:S' code editor's problems with using multiple types of quotes in one string, and it makes the pointer system work.

Q: Can I use the font included with the engine?
A: No. E-mail me if you're interested in using it.

Q: What about the sound effects?
A: Don't use them.

Q: The various other sprites included? Can I use them?
A: Nothing in any folder labled "TEST".

Q: Can I sell a game I use this in?
A: Absolutely! You are obligated to credit me as the "Text Engine Programmer" regardless of whether of not you plan on selling it, but putting
the included "dte_v6_logo.png" somewhere clearly visible in your game would be nice.



(5) Contact me

Caleb Padron
E-mail: its.nacho.chicken@gmail.com
Twitter: @nacho_chicken
YouTube: https://www.youtube.com/user/nacho1zero1



(6) Congrats on actually reading this

All code, fonts, and other images used in this are property of Caleb Padron and should not be used without obtaining proper permission.


Timestamp: 7:01 PM CDT, August 24, 2014