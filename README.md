# RGB-Image-Processing
A simple Matlab program to process RGB images

## ImageTest
The information about the input image to be printed out is the following:  
* Image size (rows x cols) 
* Minimum and maximum R values   
* Minimum and maximum G values    
* Minimum and maximum B values    
* Average R, G, B values 

**Usage:**
```m
>> ImageTest input_image_filename 
```
Image size: 480 x 640     
Min, max R values: 72 207     
Min, max G values: 39 175     
Min, max B values: 21 109     
Averages: 77.9 104.4 181.3     

## colorblur
This is a Matlab function that selectively blurs the red, green, or blue component of the input RGB image and creates a new image substituting the blurred component in the original image. (For example, if the G component is chosen, the output image is composed of the original R component, the blurred G component, an d the original B component.) Display the input image and the resulting output image side by side. Where component is an integer: 1 for red, 2 for green, or 3 for blue. im_out and image are uint8 RGB images. 

**Usage:**
```m
>> im_out = colorblur(image, component, N)
```
