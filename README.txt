ConSlide

Slideshow for Conky. Digital Photo Frame to your desktop.

=================================================================

Installation

=================================================================

1. Unpack the archive ConSlide.zip in conky installation directory.

For example:
unzip /home/user/.conky/ConSlide.zip -d /home/user/.conky/

2. Open the file ConSlide in a text editor.

3. Change the minimum size of the window to display the widget on your desktop.

For example:
minimum_size 800 800

4. Set the time refresh widget by entering the desired time in seconds.

For example, to update a time of 50 seconds:
${execpi 50 ./slideshow.sh}

!Attention!
When you upgrade image is resized. This process can take up to 300 MB of RAM. Frequent updates may impair the performance of your system.

5. Save changes to a file ConSlide.

6. Open the file slideshow.sh in a text editor.

7. Change the path to the directory with the images. All the images in the current directory and its subdirectories will be displayed.

For example:
directory="/home/user/picture/"

8. Change the maximum size of the window slide show.

For example:
max_width=750
max_height=520

Note. These dimensions should be less than in said parameter minimum_size file ConSlide.

9. Change the color of the frame and its thickness.

For example:
border_color=Gray
border_thickness=15

10. Save changes to a file slideshow.sh.

11. Run the widget in conky.

=================================================================
Thanks to the project Nookie Slideshow Conky by alecive 
http://alecive.deviantart.com/art/Nookie-Slideshow-Conky-283436023



