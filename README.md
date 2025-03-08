# Local_binomial_pattern
Local Binomial Pattern is a feature extractor that can be applied on images.
This study is on the classification of UAV collected plant images using our proposed lightweight Local Binomial Pattern feature extractor. 
It consists of the following steps, respectively.  
# 1. Data collect and dataset
An original dataset was created by extracting images of 17 different plants from the videos taken from the camera on the UAV. The dataset consists of a total of 6,170 images. These are as follows; <strong>, aubergine, pepper, corn, watermelon, strawberry, mint, carrot, parsley, basil, black cabbage, white cabbage, melon, courgette, cucumber, beans, wild herb, and tomato </strong> plants. 
You can download the mini dataset, which contains 100 sample images from each plant species, from the link. 
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
<strong>Histogram.m file</strong><br> Görüntüyü grey histograma dönüştüren MATLAB kodu <br>
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/9614cada-eb37-4629-b803-e268654a69d7)



# 4. Local Binary Pattern (LBP) + Grey Histogram
<strong>LBP_Histogram.m file</strong><br> Görüntüyü LBP özellik çıkarıcı ile grey histograma dönüştüren MATLAB kodu <br>
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/78f64703-b9b2-45c9-afd7-fd8de8a327e5)

# 5. Local Binomial Pattern (LBiP) +  Grey Histograam
<strong>LBiP_Histogram.m file</strong><br> Görüntüyü LBP özellik çıkarıcı ile grey histograma dönüştüren MATLAB kodu <br>
![image](https://github.com/user-attachments/assets/8311a2bb-1322-48f7-af9c-0e32db8ebe7f) <br>
![image](https://github.com/user-attachments/assets/c00a3ae6-3e7b-462b-b686-c508c2de42c3)

# 6. Local Binomial Pattern (LBP) + Grey Histogram + SVM
# 7. Local Binomial Pattern (LBiP) + Grey Histogram + SVM
