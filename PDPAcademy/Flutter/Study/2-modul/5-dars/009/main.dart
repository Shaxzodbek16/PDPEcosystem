// nums nomli n ta elementdan iborat list berilgan. Listning elementlari
// hammasi turli xil bo’lib 0 dan list.length - 1 gacha bo’lgan sonlardir.
// nums[i] => [0; list.length - 1]; Shu list elementlaridan yangi ans nomli
// list hosil qiling va u listni elementlari quyidagi shart asosida
// hosil qilinishi kerak: ans[i] = nums[nums[i]]; Vazifa. parametrida nums
// kabi list qabul qilib ans kabi listni qaytaruvchi funksiya tuzing:
// List<int> buildArray(List<int> nums)
// Input: nums = [0,2,1,5,3,4]
// Output: [0,1,2,4,5,3]
// Explanation: ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]],
// nums[nums[3]], nums[nums[4]], nums[nums[5]]] = [nums[0], nums[2], nums[1],
// nums[5], nums[3], nums[4]] = [0,1,2,4,5,3]
// Input: nums = [5,0,1,2,3,4]
// Output: [4,5,0,1,2,3]

void main(){
  print(buildArray([5,0,1,2,3,4]));
  print(buildArray([0,2,1,5,3,4]));
}

List<int> buildArray(List<int> nums){
  List<int> new_Array = [];
  for(int i =0; i< nums.length; i++){
    new_Array.add(nums[nums[i]]);
  }
  return new_Array;
}