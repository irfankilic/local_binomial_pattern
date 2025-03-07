# Local Binomial Pattern
Local Binomial Pattern is a feature extractor that can be applied on images. It works on the logic of using binomial expansion as a feature extractor on the image.
This study is on the classification of UAV collected plant images using our proposed lightweight Local Binomial Pattern feature extractor. 
It consists of the following steps, respectively.  
# 1. Data collect and dataset
An original dataset was created by extracting images of 17 different plants from the videos taken from the camera on the UAV. The dataset consists of a total of 6,170 images. These are as follows; <strong>, aubergine, pepper, corn, watermelon, strawberry, mint, carrot, parsley, basil, black cabbage, white cabbage, melon, courgette, cucumber, beans, wild herb, and tomato </strong> plants. 
You can download the mini dataset (17x25 = 425 images), which contains 25 sample images from each plant species, mini dataset image files: <a href="/mini_dataset.zip" target="_blank">mini_dataset.zip</a> and <a href="/mini_dataset.z01" target="_blank">mini_dataset.z01</a>.
To access the full dataset, please contact the author.
# 2. Dataset samples

![clip_image008](https://github.com/user-attachments/assets/3db0c03c-c7d7-40ce-95e8-90c00219dbc2) 
![clip_image006](https://github.com/user-attachments/assets/4f045a65-b689-4cdd-8c16-13b289b6ba73)
![clip_image004](https://github.com/user-attachments/assets/11ac2dd4-c09a-40bb-a977-f3aeb2f16e37) 
![clip_image002_0000](https://github.com/user-attachments/assets/7d45b04f-1b37-4e54-b2fc-415708225ffa) <br>
![clip_image034](https://github.com/user-attachments/assets/04517fb3-ce98-4ed1-ab03-b6afad47cfe3)
![clip_image032](https://github.com/user-attachments/assets/f566a9c0-846c-4fc2-a7c9-b354b12a4766)
![clip_image030](https://github.com/user-attachments/assets/5be60e87-e878-46a1-a8b6-051691a5b7d4)
![clip_image028](https://github.com/user-attachments/assets/e518affb-2d09-4292-8e45-36bd73b46e03) <br>
![clip_image026](https://github.com/user-attachments/assets/cdcccb38-b218-46ee-a33f-b344264ee008)
![clip_image024](https://github.com/user-attachments/assets/62c8923e-5343-4578-9597-10d00487af08)
![clip_image022](https://github.com/user-attachments/assets/7547c5fa-94a2-43b0-b828-60640f7ac6d1)
![clip_image020](https://github.com/user-attachments/assets/a24ecd03-006f-429a-a3f5-e6c02a746007) <br>
![clip_image018](https://github.com/user-attachments/assets/3dbcb716-4908-4327-88a6-4d1e98b8ec38)
![clip_image016](https://github.com/user-attachments/assets/50b22efb-d154-4aa9-9f6a-2b60908efb1b)
![clip_image014](https://github.com/user-attachments/assets/7fe3bef2-76f9-4a25-a740-8f90ef8dad1e)
![clip_image012](https://github.com/user-attachments/assets/c17b344f-f589-4e85-8077-91cae600651c)
![clip_image010](https://github.com/user-attachments/assets/321c5e3b-8908-4d91-b318-2a721bb15822)


# 3. Image Grey Histogram
<strong><a href="/Histogram.m" target="_blank">Histogram.m file</a> </strong><br> MATLAB code to convert image to gray histogram <br><br> 
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/9614cada-eb37-4629-b803-e268654a69d7)



# 4. Local Binary Pattern (LBP) + Grey Histogram
<strong><a href="/LBP_Histogram.m" target="_blank"> LBP_Histogram.m file</a></strong><br> MATLAB code to convert image to grey histogram with LBP feature extractor<br>
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/78f64703-b9b2-45c9-afd7-fd8de8a327e5)<br>



# 5. Local Binomial Pattern (LBiP) +  Grey Histograam
<strong><a href="/LBiP_Histogram.m" target="_blank"> LBiP_Histogram.m file</a></strong><br> MATLAB code to convert image to grey histogram with LBiP feature extractor <br>
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/c00a3ae6-3e7b-462b-b686-c508c2de42c3)<br>
![image](https://github.com/user-attachments/assets/457801b4-3789-4a18-8804-5d4b89d1d47f)

# 6. Grey Histogram + SVM
<strong><a href="/SVM_Histogram.m" target="_blank"> SVM_Histogram.m file</a></strong><br> Classification of Grey Histogram image with SVM classifier<br>
# 7. Local Binary Pattern (LBP) + Grey Histogram + SVM
<strong><a href="/SVM_LBP.m" target="_blank"> SVM_LBP.m file</a></strong><br> Classification of LBP image with SVM classifier<br>
# 8. Local Binomial Pattern (LBiP) + Grey Histogram + SVM
<strong><a href="/SVM_LBiP.m" target="_blank"> SVM_LBiP.m file</a></strong><br> Classification of LBiP image with SVM classifier<br>
# Results
![image](https://github.com/user-attachments/assets/c63175c2-c82a-4b48-bdc8-154eb80829bd)

