import java.util.*;
class Solution {
    public int solution(String s) {
        int answer = 0;
        String []number = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
        
        for(int i=0;i<number.length;i++){
            if(s.contains(number[i]))
                s=s.replace(number[i],String.valueOf(i));
            
        }
        return Integer.valueOf(s);
    }
}