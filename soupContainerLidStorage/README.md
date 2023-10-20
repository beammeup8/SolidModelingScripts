# Soup Container Lid Storage
I designed this to allow me to store the lids for the soup takeout containers that I reuse for food storage. This can be [resized](#resizing) to store any relatively flat circluar object in a neat stack, so long as they do not stick to one another and will not damage one another if they touch. 

![soupLidHolder.png](soupLidHolder.png)

## Printing
I printed the listed STL file using 5% infill in PLA, with 0.2mm layer height on a Prusa mks3+. I would not go for lower infill than the 5% I used and I would go higher if being repurposed for anything bigger or heavier than plastic lids, and would not go lower regardless of the usecase.

## Resizing
* `lid_dim`: Diameter of the circle biggest circle that you want to be able to store. Please add the buffer you would like, as the code assumes the actual inner diameter will be the number supplied here
* `thickness`: This is the thickness of each circlar object to be stored, this is mainly used to determine the height, as it is multiplied by the count, and that is the height that the vertical section is.
* count = 15
* mat_thickness = 5
* skirt_mod = 0.75