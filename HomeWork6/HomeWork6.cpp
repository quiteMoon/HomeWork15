#include <iostream>
#include <algorithm>

using namespace std;

//Task 1
//int* createThirdArray(int A[], int M, int B[], int N, int& sizeC) {
//    int maxSizeC = min(M, M + N);
//
//    int* C = new int[maxSizeC];
//
//    sizeC = 0;
//
//    for (int i = 0; i < M; ++i) {
//        bool isFound = false;
//        for (int j = 0; j < N; ++j) {
//            if (A[i] == B[j]) {
//                isFound = true;
//                break;
//            }
//        }
// 
//        if (!isFound && !binary_search(C, C + sizeC, A[i])) {
//            C[sizeC++] = A[i];
//        }
//    }
//
//    return C;
//}
//
//int main() {
//    int M, N;
//
//    cout << "Size A: ";
//    cin >> M;
//    int* A = new int[M];
//
//    cout << "Array A: ";
//    for (int i = 0; i < M; ++i) {
//        A[i] = rand() % 20 + 1;
//        cout << A[i] << " ";
//    }
//    cout << endl;
//
//    cout << "Size B: ";
//    cin >> N;
//    int* B = new int[N];
//
//    cout << "Array B: ";
//    for (int i = 0; i < N; ++i) {
//        B[i] = rand() % 20 + 1;
//        cout << B[i] << " ";
//    }
//    cout << endl;
//
//    int sizeC;
//    int* C = createThirdArray(A, M, B, N, sizeC);
//
//    cout << "Array C: ";
//    for (int i = 0; i < sizeC; ++i) {
//        cout << C[i] << " ";
//    }
//    cout << endl;
//
//    delete[] A;
//    delete[] B;
//    delete[] C;
//}

// Task 2
//bool isInArray(int x, int arr[], int size) {
//    for (int i = 0; i < size; ++i) {
//        if (arr[i] == x) {
//            return true;
//        }
//    }
//    return false;
//}
//
//int* createThirdArray(int A[], int M, int B[], int N, int& sizeC) {
//
//    int maxSizeC = M + N;
//
//    int* C = new int[maxSizeC];
//
//    sizeC = 0;
//
//    for (int i = 0; i < M; ++i) {
//        if (!isInArray(A[i], B, N) && !isInArray(A[i], C, sizeC)) {
//            C[sizeC++] = A[i];
//        }
//    }
//
//    for (int i = 0; i < N; ++i) {
//        if (!isInArray(B[i], A, M) && !isInArray(B[i], C, sizeC)) {
//            C[sizeC++] = B[i];
//        }
//    }
//
//    return C;
//}
//
//int main() {
//    int M, N;
//
//    cout << "Enter the size of array A: ";
//    cin >> M;
//    int* A = new int[M];
//
//    cout << "Array A: ";
//    srand(time(nullptr));
//    for (int i = 0; i < M; ++i) {
//        A[i] = rand() % 20 + 1;
//        cout << A[i] << " ";
//    }
//    cout << endl;
//
//    cout << "Enter the size of array B: ";
//    cin >> N;
//    int* B = new int[N];
//
//    cout << "Array B: ";
//    for (int i = 0; i < N; ++i) {
//        B[i] = rand() % 20 + 1; 
//        cout << B[i] << " ";
//    }
//    cout << endl;
//
//    int sizeC;
//    int* C = createThirdArray(A, M, B, N, sizeC);
//
//    cout << "The third array without duplicates: ";
//    for (int i = 0; i < sizeC; ++i) {
//        cout << C[i] << " ";
//    }
//    cout << endl;
//
//    delete[] A;
//    delete[] B;
//    delete[] C;
//}

// Task 3
//int* allocateMemory(int size) {
//    return new int[size];
//}
//
//void initializeArray(int* arr, int size) {
//    for (int i = 0; i < size; ++i) {
//        arr[i] = 0;
//    }
//}
//
//void printArray(int* arr, int size) {
//    for (int i = 0; i < size; ++i) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//}
//
//void deallocateMemory(int* arr) {
//    delete[] arr;
//}
//
//void appendElement(int*& arr, int& size, int element) {
//    int* newArr = new int[size + 1];
//
//    for (int i = 0; i < size; ++i) {
//        newArr[i] = arr[i];
//    }
//
//    newArr[size] = element;
//    ++size;
//
//    delete[] arr;
//    arr = newArr;
//}
//
//void insertElementAtIndex(int*& arr, int& size, int index, int element) {
//    if (index < 0 || index > size) {
//        cout << "Invalid index!" << endl;
//        return;
//    }
//
//    int* newArr = new int[size + 1];
//
//    for (int i = 0; i < index; ++i) {
//        newArr[i] = arr[i];
//    }
//
//    newArr[index] = element;
//
//    for (int i = index; i < size; ++i) {
//        newArr[i + 1] = arr[i];
//    }
//
//    ++size;
//
//    delete[] arr;
//    arr = newArr;
//}
//
//void removeElementAtIndex(int*& arr, int& size, int index) {
//    if (index < 0 || index >= size) {
//        cout << "Invalid index!" << endl;
//        return;
//    }
//
//    int* newArr = new int[size - 1];
//
//    for (int i = 0; i < index; ++i) {
//        newArr[i] = arr[i];
//    }
//
//    for (int i = index + 1; i < size; ++i) {
//        newArr[i - 1] = arr[i];
//    }
//
//    --size;
//
//    delete[] arr;
//    arr = newArr;
//}
//
//int main() {
//    int* arr = nullptr;
//    int size = 0;
//
//    arr = allocateMemory(5);
//
//    initializeArray(arr, 5);
//
//    appendElement(arr, size, 10);
//    appendElement(arr, size, 20);
//    appendElement(arr, size, 30);
//
//    cout << "Array after adding elements: ";
//    printArray(arr, size);
//
//    insertElementAtIndex(arr, size, 1, 15);
//
//    cout << "Array after inserting element at index 1: ";
//    printArray(arr, size);
//
//    removeElementAtIndex(arr, size, 2);
//
//    cout << "Array after removing element at index 2: ";
//    printArray(arr, size);
//
//    deallocateMemory(arr);
//
//}

// Task 4
//bool isPrime(int num) {
//    if (num <= 1) {
//        return false;
//    }
//    for (int i = 2; i * i <= num; ++i) {
//        if (num % i == 0) {
//            return false;
//        }
//    }
//    return true;
//}
//
//int* removePrimes(int* arr, int& size) {
//    int newSize = 0;
//
//    for (int i = 0; i < size; ++i) {
//        if (!isPrime(arr[i])) {
//            ++newSize;
//        }
//    }
//
//    int* newArr = new int[newSize];
//    int index = 0;
//
//    for (int i = 0; i < size; ++i) {
//        if (!isPrime(arr[i])) {
//            newArr[index++] = arr[i];
//        }
//    }
//
//    size = newSize;
//
//    delete[] arr;
//
//    return newArr;
//}
//
//int main() {
//    int size;
//    cout << "Enter the size of the array: ";
//    cin >> size;
//
//    int* arr = new int[size];
//
//    cout << "Enter the elements of the array: ";
//    for (int i = 0; i < size; ++i) {
//        cin >> arr[i];
//    }
//
//    arr = removePrimes(arr, size);
//
//    cout << "Array after removing prime numbers: ";
//    for (int i = 0; i < size; ++i) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//
//    delete[] arr;
//
//}

// Task 5
//void splitArray(int* staticArray, int size, int*& positiveArray, int& positiveSize,
//    int*& negativeArray, int& negativeSize, int*& zeroArray, int& zeroSize) {
//    int countPositive = 0, countNegative = 0, countZero = 0;
//    for (int i = 0; i < size; ++i) {
//        if (staticArray[i] > 0) {
//            ++countPositive;
//        }
//        else if (staticArray[i] < 0) {
//            ++countNegative;
//        }
//        else {
//            ++countZero;
//        }
//    }
//
//    positiveArray = new int[countPositive];
//    negativeArray = new int[countNegative];
//    zeroArray = new int[countZero];
//
//    int positiveIndex = 0, negativeIndex = 0, zeroIndex = 0;
//    for (int i = 0; i < size; ++i) {
//        if (staticArray[i] > 0) {
//            positiveArray[positiveIndex++] = staticArray[i];
//        }
//        else if (staticArray[i] < 0) {
//            negativeArray[negativeIndex++] = staticArray[i];
//        }
//        else {
//            zeroArray[zeroIndex++] = staticArray[i];
//        }
//    }
//
//    positiveSize = countPositive;
//    negativeSize = countNegative;
//    zeroSize = countZero;
//}
//
//int main() {
//    const int size = 10;
//    int staticArray[size] = { -2, 0, 5, -7, 0, 8, -4, 3, 0, -9 };
//
//    int* positiveArray = nullptr;
//    int positiveSize = 0;
//    int* negativeArray = nullptr;
//    int negativeSize = 0;
//    int* zeroArray = nullptr;
//    int zeroSize = 0;
//
//    splitArray(staticArray, size, positiveArray, positiveSize,
//        negativeArray, negativeSize, zeroArray, zeroSize);
//
//    cout << "Positive array: ";
//    for (int i = 0; i < positiveSize; ++i) {
//        cout << positiveArray[i] << " ";
//    }
//    cout << endl;
//
//    cout << "Negative array: ";
//    for (int i = 0; i < negativeSize; ++i) {
//        cout << negativeArray[i] << " ";
//    }
//    cout << endl;
//
//    cout << "Zero array: ";
//    for (int i = 0; i < zeroSize; ++i) {
//        cout << zeroArray[i] << " ";
//    }
//    cout << endl;
//
//    delete[] positiveArray;
//    delete[] negativeArray;
//    delete[] zeroArray;
//}