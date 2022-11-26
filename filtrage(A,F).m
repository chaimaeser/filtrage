function filtrage(A,F)
    A = imread(A);
    [n,m,p] = size(A);
    im2 = zeros(n,m,3);
    for i=2:n-1
        for j=2:m-1
            im2(i,j,1) = F(1,1)*A(i-1,j-1,1)+F(1,2)*A(i-1,j,1)+F(1,3)*A(i-1,j+1,1)+F(2,1)*A(i,j-1,1)+F(2,2)*A(i,j,1)+F(2,3)*A(i,j+1,1)+F(3,1)*A(i+1,j-1,1)+F(3,2)*A(i+1,j,1)+F(3,3)*A(i+1,j+1,1);
            im2(i,j,2) = F(1,1)*A(i-1,j-1,2)+F(1,2)*A(i-1,j,2)+F(1,3)*A(i-1,j+1,2)+F(2,1)*A(i,j-1,2)+F(2,2)*A(i,j,2)+F(2,3)*A(i,j+1,2)+F(3,1)*A(i+1,j-1,2)+F(3,2)*A(i+1,j,2)+F(3,3)*A(i+1,j+1,2);
            im2(i,j,3) = F(1,1)*A(i-1,j-1,3)+F(1,2)*A(i-1,j,3)+F(1,3)*A(i-1,j+1,3)+F(2,1)*A(i,j-1,3)+F(2,2)*A(i,j,3)+F(2,3)*A(i,j+1,3)+F(3,1)*A(i+1,j-1,3)+F(3,2)*A(i+1,j,3)+F(3,3)*A(i+1,j+1,3);
        end
end
figure;imshow(im);
im2=uint8(im2);
title('image originale')
figure;imshow(im2);
title('image grise')
imwrite(im2,'image.jpeg');