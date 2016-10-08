---
nid: '3624'
title: 'Object and Camera Path Tracking in Blender - "Monkey See Monkey Do"'
authors: 'Terry Hancock'
published: '2012-01-24 11:55:23'
tags: 'free-software,movies,blender,3d,animation,lunatics'
license: verbatim_only
section: end_users
main_image: blender_logo.png
listed: 'true'

---
Blender has a useful set of constraint-based animation tools which make it fairly simple to animate motion of objects or of the camera along controlled paths. I expect to use this a lot, so I want to make sure I understand how it works. Here I'm going to work out a simple example using the "Suzanne" monkey meshes in Blender 2.49 to demonstrate simple path and tracking constraints with a mesh and with the camera. Because everything is better with monkeys.

<!--break-->

This is a technique I expect to use a lot in animating "Lunatics". Particularly in the pilot episode, we have a lot of mechanical exterior shots where objects and the camera need to move along smooth arcs. These are the 3D animation equivalent of "motion control" crane shots in live-action and model-effect shooting. It's also a handy technique of generating a quick video animation to show off a model design without having to do a lot of work to animate it.

I knew I wanted to do this, but I was surprised to find that the tutorials were a bit haphazard. So I figured I'd better work out an example in detail to make sure I understood how things interact.

To keep better track of the orientations of objects, I will be using the special "Monkey" mesh available in Blender. This is kind of an Easter-egg in the program, as the monkey (whose name is "Suzanne", by the way) is the program's mascot. But the nice thing for this example is that, unlike the other primitive meshes in Blender, it's very easy to tell which way the monkey is "looking", which makes this example a lot less confusing.

For this example, I'm using Blender 2.49 as packaged in the Debian GNU/Linux distribution.

# First monkey

I open up Blender, and of course, there's a default scene with a cube, a camera, and a light source. I don't really need any of this, so I select them all and hit "Del" to delete them.

=IMAGE=fig_first_monkey.jpg=Figure 1: The first monkey mesh is added (after deleting the default scene objects=

Then, leaving the 3D cursor at the zero point, I press the spacebar and select the "Monkey" mesh to add to the scene (Figure 1). You'll note that at this point the Monkey is looking straight up the Z axis, with the top of her head pointing in the positive Y direction. I press Numpad-3 to get a side view, right click on the monkey head, and then press "R" to select rotate mode, then drag the mouse while holding the "Ctrl" key to rotate her to a position looking down the negative Y axis, with her head pointing to positive Z (Figure 2).

=IMAGE=fig_rotating_monkey.jpg=Figure 2: Rotating the monkey to look down the -Y axis with head in the +Z direction=

This causes the monkey to be in the more normal position, with Z being the "height" direction and Y being the "depth". To make sure this is incorporated into the model, select "Object->

Press "N" and set the name for this monkey to "MonkeyDO" -- because this is the monkey that will be watched.

At this point, I'm going to start thinking about animation, so I use the "Split Areas" tool (click on the right side frame of the 3D window and select "Split Areas", then drag the frame down to make a narrow band across the bottom of the window. From the "Window Type" button, I select "Timeline" to create a window for controlling animation position (Figure 3). I then edit the "End" button to read 900 -- I'm going to make this a 30-second video at 30 frames-per-second (which is standard for NTSC video).

=IMAGE=fig_timeline.jpg=Figure 3: Adding the timeline and setting the duration of the animation=

At this point I could do some key-frame animation of this Monkey, but for now, she's just going to sit still, looking down the negative Y axis.

# Path for the Second Monkey

Next, I press Numpad-7 to return to the top view (Viewing the XY-plane from the +Z direction). If the cursor has been moved, I can select "MonkeyDO" and the Object->Snap->Cursor-to-Selection to move the cursor back to the center.

Now, I hit spacebar and select Curve->BezierCircle to make a BezierCircle object. I then hit "S" to scale and drag the circle out to a reasonable viewing radius from "MonkeyDO" (Figure 4).

=IMAGE=fig_bezier_circle.jpg=Figure 4: Adding a path for the second monkey to follow=

This circle will be filled in by default, but we then go to the edit buttons panel (F9), and, on the "Curve and Surface" control panel, click the "3D" option. The fill will disappear from the curve, and it can now be editing in three dimensions rather than being confined to a single plane.

Then I edit "PathLen" to make it 900. By default (at least in Blender 2.4), path animation goes one frame per path step, so this means an object following this path will make the complete circuit in the same 30 seconds I set for the animation frame count.

To make this path a little more interesting, I hit the Tab key to go into editing mode, and alter the locations of the nodes to make it move up and down as well as going around the first monkey (Figure 5). Exit edit mode by hitting "Tab" again. Then use the "N" key to name this path "MonkeyOrbit".

=IMAGE=fig_path.jpg=Figure 5: Some ups and downs make the path a little more interesting=

# Second Monkey

Leaving the cursor at the center, I now add the second monkey in the same way as the first, except that I leave this one in the original position (i.e. looking up the +Z axis with the top of her head towards the +Y direction). I name this monkey "MonkeySEE" (Figure 6). I also scale her down slightly (after all, it's usually baby monkeys that watch big monkeys to learn, right?). I also switched to wireframe view to make it a little easier to keep the two monkeys separated even though they are currently overlapping.

=IMAGE=fig_second_monkey.jpg=Figure 6: Adding the second monkey mesh=

As you can see in the figure, I've also used the "Split Areas" tool to create an "Outliner" window. This shows me the named objects and gives an alternate way to select them.

# Path Constraint

Now I'm going to put the second monkey, "MonkeySEE", onto the "MonkeyOrbit" path.

With "MonkeySEE" selected, in object mode, under the "Constraints" panel, I select click on "Add Constraints->Follow Path" to add a path constraint (Figure 7). Now I see a new panel to control the constraint. I change the red constraint name to "MonkeyPath". I fill in the blank "Target" field with the curve object, "MonkeyOrbit". I change the "forward" direction to "Z", the "up" direction to "Y", and select "CurveFollow".

Doing this causes "MonkeySEE" to jump onto the path. Now it's important that the "MonkeySEE" was left at the origin (the zero-point of the Blender world grid) before this step, or it will not appear directly on the path, but displaced from it. If you made this mistake, though, you can fix it very easily by using "Object->Clear/Apply->Clear Location" and "Object->Clear/Apply->Clear Rotation" to clear any rotations if you applied them.

At this point, "MonkeySEE" can be animated along the orbit by simply sliding the "Timeline" slider. I can see that it always facing along the path -- i.e it remains _tangent_ to the path.

=IMAGE=fig_path_constraint.jpg=Figure 7: With the path constraint set, the monkey will follow the path and it looks tangent along the path as it moves=

# Tracking Constraint

To make "MonkeySEE" _see_ "MonkeyDO" it is necessary to add a second constraint, using "Track To". Click the "Add Constraint" button and select "Track To". This time, put the "MonkeyDO" object in as the "Target", set "Z" for the look direction, and "Y" for the "Up" direction. Call this constraint "Look".

Please note: the order of these constraints _is_ significant. The later constraint overrides the earlier. So while the path constraint is now controlling where the monkey is located, this track constraint is now controlling where it is looking. 

Note also that each additional constraint has an "influence" slider. This is why I bothered setting a rotation constraint from the "Follow Path" constraint at all. By reducing the influence of the "Track To" constraint, I can allow "MonkeySEE" to compromise between "looking where she's going" and "looking at 'MonkeyDO'". This can be a useful technique when you are using several constraints together.

Now if you move the "Timeline" slider, you'll see "MonkeySEE" orbit around "MonkeyDO" while always looking at her (Figure 8).

=IMAGE=fig_tracking_constraint.jpg=Figure 8: With the tracking constraint set, the second monkey will now look at the first monkey as it is moving=

# Adding a Camera

So far, I've made MonkeySEE see MonkeyDO, but I can't _see_ MonkeySEE see MonkeyDO!

To do that, I need to add a camera by pressing spacebar and selecting "Camera". For good measure, I clear rotations and location (with "Object->Clear/Apply->Clear Location" and "Object->Clear/Apply->Clear Rotation").

I switch to top view and back off a bit using the mouse's scroll wheel (or hold down "Ctrl" while clicking and dragging with the middle mouse button). I select "MonkeyOrbit" and I duplicate it with "Shift+D", drop it with right mouse button, then type "S" and drag to scale it out about twice the size of the inner "MonkeyOrbit". I type "N" and name this curve "CameraOrbit". I also use "R" and hold down "Ctrl" to rotate this orbit around 85 degrees or so.

As with "MonkeySEE", I add both "Follow Path" and "Track To" constraints so that the camera always looks at "MonkeyDO" and follows around on the path. Of course, MonkeySEE will often be visible in the camera's field of view, but it will be focused on "MonkeyDO".

Note that the camera looks down the Z axis towards the negative (-Z) direction, so we set that direction as the "Align" direction.

At this point, I want to test the view, so I use "Split Areas" again to create a viewpoint in which I press "Numpad-0" to take the camera's point of view. Using the slider in the "Timeline" window, I can animate the view and see what will be rendered (Figure 9).

=IMAGE=fig_camera.jpg=Figure 9: The camera is added and constrained in much the same way as the second monkey=

To actually render the scene, however, I need to add lights -- I add some colored "Sun" lights to do this job. To add a lamp, I move the cursor to the desired position, press spacebar, then select "Lamp->Sun". I then hit "R" to rotate and adjust the beam to point towards the scene (not, however, that the "Sun" lamp actually creates parallel beams so the source location isn't really important -- only the direction. Placing the source so that the beam points at the origin, though, makes it easier to understand the lighting).

This lets me create a rendering (see figure 10), in this case, at frame 710. This is okay, but because the camera is strictly tracking "MonkeyDO", it isn't very well centered.

=IMAGE=fig_1st_render.jpg=Figure 10: The first rendering test shows the camera tracks the first monkey, but this creates awkward framing=

# A Second Tracking Constraint

There's more than one way to change the camera pointing. One popular way is to create an "Empty" object (an "Empty" is an object that exists in Blender in name only -- it's just a location and coordinate system with no renderable elements) and track that. Then you can animate the position of the empty to control where the camera points. This could work fine in this situation, but what I really want is to split the difference between tracking "MonkeyDO" and "MonkeySEE" so that the camera keeps both of them in frame consistently.

To do this, I'm going to simply add a second tracking constraint on "MonkeySEE". I do this exactly as I did with the first constraint.

Of course, that will now look entirely at "MonkeySEE" and "MonkeyDO" will slip off to the edge of the frame (Figure 11).

=IMAGE=fig_2nd_render.jpg=Figure 11: Adding another tracking constraint, this time towards the second monkey, also creates awkward framing -- by itself=

To fix that, I simply adjust the "Influence" slider to "0.50" -- this means that the constraint's result will be weighted 50% to 50% aganst the previously computed value -- which will exactly balance the "MonkeyDO" and "MonkeySEE" targets and keep both in frame nicely (Figure 12).

=IMAGE=fig_3rd_render.jpg=Figure 12: Reducing the influence of the second tracking constraint results in a balanced composition=

# Render the Animation

To create a video of this animation, I click on the Rendering and Animation icon (or press F10). I click on "NTSC" to automatically set resolution, dimensions, aspect ratio, and frame rate. This is convenient for upload to online video services. Obviously, you can specifically set the values if you prefer.

Also on this panel is the "format" option, which I set to use "FFMpeg" which will create an MPEG video file as output. Under the Output panel (far left), where it currently says "/tmp", I click the folder icon to browse to the output folder I want, and name the output file.

On the render panel, I turned on the "OSA" setting for oversampling and set the oversample to "8" (this is actually the default, so you may not have to do anything). I also used the "Edit" buttons (F9) to select each of the monkeys and clicked "Set Smooth" on the "Link and Materials" panel -- this makes them appear smooth in the renderings. This isn't strictly necessary, but it improves the rendering quality.

Figure 13 summarizes these settings.

=IMAGE=fig_animation_settings.jpg=Figure 13: Animation settings used=

Then I click the big "ANIM" button to start rendering the animation.

=VIDEO=YOUTUBE=vyIwIsDjwzE=
=TABLE_CAPTION=A few minor tweaks results in this final video=

And that's it -- we've set up tracking for both an object in the scene and for the camera watching it.

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (all images in this article are CC By-SA 3.0 compatible).
=TEXTBOX_END=














