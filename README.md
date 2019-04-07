# DIP_project
This repository contains the project details of the course ECN- (DIgital image processing)
The code contains matlab files for stereo-camera calibration, detecting a red colour object 
and calculating distance of the red object from the two cameras.

topics--

1. camera calibraiton
2. rectification
3. disparity map
4.triangulation

requirements -- 

matlab


files -- 

1. stereo_parameters.m 

--contains matlab code for calculating the relative orientation and the distance between the two cameras.

--the output of this code return the realtive orientation and transaltional matrices of the two cameras.

2. rectification.m

--this code uses the stereo_parameters calculated before and rectify the two images of the left and right camera.

3. red_color_detection.m

--this code detects the red colour object (in our case a mug) in the image and shows its centeroid positions.

4. disparity and distance calcualtion.m

-- this code calculates the disparity map of the two image pairs and calculate the distance of the red colour object detected in the images
  
   using the triangulation formulae.




