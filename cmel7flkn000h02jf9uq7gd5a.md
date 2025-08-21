---
title: "Java Coding Challange"
datePublished: Thu Aug 21 2025 09:33:57 GMT+0000 (Coordinated Universal Time)
cuid: cmel7flkn000h02jf9uq7gd5a
slug: java-coding-challange
tags: shreenibas

---

### Write a Java program to print the last word and word length in a given String, without using the split() method.

### Example Input Occurrencee of string

### Output: string=6

```java
// Wright a Java program to print the last word and word length in a given String, without using the split() method.
// Example Input: Occurrence of string
//        Output:string=6

class Main {
    public static void main(String[] args) {
        String input ="Occurence of string";
        String st="";
        for(int i= 0;i<input.length();i++){
            if(input.charAt(i)==' '){
                st="";
            }
            if(input.charAt(i)!=' '){
            st+=input.charAt(i);
            }
        }
        System.out.println(st+" = "+st.length());
    }
}
```