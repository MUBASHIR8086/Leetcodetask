/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {



      ListNode? list=head;


      while(list?.next!=null){

          if(list?.val==list?.next?.val){
              list?.next=list.next?.next;
          }
          else{
              list=list?.next;
          }


          }

          
      
      return head;


      

    



  }
}