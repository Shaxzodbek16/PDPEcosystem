// Quyidagi link orqali o'tib topshiriqni bajaring va tekshirish maqsadida
// dastur kodini, hamda leetcodedagi natijani screenshot qilib jo'nating :
//  https://leetcode.com/problems/single-number/

class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> h = {};
    for(int i in nums){
      if(h[i] == null) {
        h[i] = 0;
      }else{
        h[i] = h[i]! + 1;
      }
    }
    return h.values.where((element)=> element==1).toList()[0];
  }
}