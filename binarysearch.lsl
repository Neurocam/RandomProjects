/*

The sum of numbers from 1 to n is (n + 1) (n / 2) or (n**2)/2 + n/2

The sum of c * 1 + c * 2 + c * 3 + ... c * (n - 1) = 
           c * (1 + 2 + 3 + ... + (n - 1)) or

           c * (n - 1 + 1)((n - 1)/2) = cn**2/2 - cn/2

*/

list primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

integer doSearch(list array, integer targetValue)
{
       float min = 0;
       float max = llGetListLength(array)-1;
       integer guess;
       integer times=0;
       while(max>=min)
       {
           guess=llFloor((max+min)/2);
           llOwnerSay((string)guess);
           times++;
           if(llList2Integer(array,guess)==targetValue)
           {
               llOwnerSay("This took "+(string)times+" times.");
               return guess;
           }
           else if(llList2Integer(array,guess)<targetValue)
           {
               min=guess+1;
           }
           else
           {
               max=guess-1;
           }
       }
       llOwnerSay((string)times);
       return -1;
}
float logBaseN( integer input, integer base )
{
    return llLog(input)/llLog(base);
}
float logBaseNSearch( integer input, integer base )
{
    return llFloor(llLog(input)/llLog(base))+1;
}
list swap(list array,integer firstIndex, integer secondIndex) 
{
    list tarray1=llList2List(array,firstIndex,firstIndex);
    //list tarray2=llList2List(array,secondIndex,secondIndex);
    
    array=llListReplaceList(array,
        llList2List(array,secondIndex,secondIndex),firstIndex,firstIndex);
    array=llListReplaceList(array,tarray1,secondIndex,secondIndex);
    return array;
}
integer indexOfMinimum(list array, integer startIndex)
{
    integer minValue = llList2Integer(array, startIndex);
    integer minIndex = startIndex;
    integer i;
    for(i = minIndex + 1; i < llGetListLength(array); i++ )
    {
        if(llList2Integer(array,i) < minValue)
        {
            minIndex = i;
            minValue = llList2Integer(array,i);
        }
    }
    return minIndex;
}
list selectionSort(list array)
{
    integer i;
    integer j;
    for(i = 0; i < llGetListLength(array); i++)
    {
        j = indexOfMinimum(array,i);
        array=swap(array,i,j);
    }
    return array;
}
list insert(list array, integer rightIndex, integer value)
{
    integer j;
    for(j = rightIndex; j >= 0 && llList2Integer(array, j) > value; j--)
    {
        array = llListReplaceList(array, llList2List(array,j,j), j+1, j+1);
    }
    return array = llListReplaceList(array,[value],j+1,j+1);
}

list insertionSort(list array)
{
    integer i;
    for(i=1;i<llGetListLength(array);i++)
    {
        array=insert(array,i-1,llList2Integer(array,i));
    }
    return array;
}

integer factorialI(integer n)
{
    integer result = 1;
    integer i;
    for(i = 1; i <= n; i++)
    {
        result*=i;
    }
    return result;
}
integer factorialR(integer n)
{
    if(n==0)
    {
        return 1;
    }
    return n*factorialR(n-1);
}


list arr1 = [22, 11, 99, 88, 9, 7, 42];
list arr2 = [9,8,7,6,5,4,3,2,1,0];
list arr3 = [9,8,7,6,5,-4,3,2,1,0];
list inserttest = [3, 5, 7, 11, 13, 2, 9, 6];

list tests = [18, 6, 66, 44, 9, 22, 14]; 
list test = [7, 9, 4, 6, 3, 6];
integer index;
list insertionSort1=[22, 11, 99, 88, 9, 7, 42];
list insertionSort2=[-22, 5, 0, 0, 22, 52, 11, 9];

default
{
    state_entry()
    {

    }

    touch_start(integer total_number)
    {
        //hmm=(integer)test;
        //llOwnerSay(llDumpList2String(swap(test,0,1),"|"));
        //llOwnerSay((string)logBaseNSearch(1580000,2));
        //llOwnerSay((string)"Found prime at index: " + (string)doSearch(primes,73)+".");
        //index = indexOfMinimum(tests,2);
        //llOwnerSay("The index of the minimum value of the subarray starting at index 2 is " + (string)index + "."  );

        //index = indexOfMinimum(tests,1);
        //llOwnerSay("The index of the minimum value of the subarray starting at index 1 is " + (string)index + "."  );

        //index = indexOfMinimum(tests,5);
        //llOwnerSay("The index of the minimum value of the subarray starting at index 5 is " + (string)index + "."  );

        //arr1=selectionSort(arr1);
        //llOwnerSay("Array after sorting:  " + llDumpList2String(arr1,"|"));

        //arr2=selectionSort(arr2);
        //llOwnerSay("Array after sorting   " + llDumpList2String(arr2,"|"));

        //arr3=selectionSort(arr3);
        //llOwnerSay("Array after sorting   " + llDumpList2String(arr3,"|"));

        //inserttest=insert(inserttest, 4, 2);
        //llOwnerSay("Array after inserting 2:  " + llDumpList2String(inserttest,"|"));

        //inserttest=insert(inserttest, 5, 9);
        //llOwnerSay("Array after inserting 9:  " + llDumpList2String(inserttest,"|"));

        //inserttest=insert(inserttest, 6, 6);
        //llOwnerSay("Array after inserting 6:  " + llDumpList2String(inserttest,"|"));

        //insertionSort1=insertionSort(insertionSort1);
        //llOwnerSay("Array after sorting: "+ 
        //    llDumpList2String(insertionSort1,"|"));
        //insertionSort2=insertionSort(insertionSort2);
        //llOwnerSay("Array after sorting: "+ 
        //    llDumpList2String(insertionSort2, "|"));

        llOwnerSay("The value of 5! should be " + (string)(5*4*3*2*1));
        llOwnerSay("The value of 5! is " + (string)factorial(5));
        llOwnerSay("The value of 0! should be 1");
        llOwnerSay("The value of 0! is " + (string)factorial(0));
    }
}