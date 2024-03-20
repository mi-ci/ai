# import torch
# scalar1 = torch.tensor([1.])
# print(scalar1)

# vector1 = torch.tensor([1.,2.,3.])
# vector2 = torch.tensor([4.,5.,6.])

# print(vector1, vector2)
# print(vector1+vector2)
# print(vector1-vector2)
# print(torch.dot(vector1,vector2)) #dot product

# #매트릭스는 2개 이사의 벡터 값을 통합해 구성된 갑승로
# matrix1 = torch.tensor([[1.,2.],[3.,4.]])
# print(matrix1)
# matrix2 = torch.tensor([[5.,6.],[7.,8.]])
# print(matrix2)
# matrix3 = torch.tensor([[1.,2.,3.],[4.,5.,6.],[7.,8.,9.],[10.,11.,12.]])
# print(type(matrix3))

# print(torch.matmul(matrix1,matrix2))

# tensor1 = torch.tensor([[[1.,2.],[3.,4.]],[[5.,6.],[7.,8.]]])
# print(type(tensor1))

import torch
if torch.cuda.is_available() :
    DEVICE = torch.device("cuda")
else :
    DEVICE = torch.device('cpu')
print(DEVICE)
BATCH_SIZE=64
INPUT_SIZE=1000
HIDDEN_SIZE=100
OUTPUT_SIZE=10
