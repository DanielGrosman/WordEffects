//
//  main.m
//  WordEffects
//
//  Created by Daniel Grosman on 2017-10-30.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (TRUE) {
        
        NSArray *textOptions = @[@"1. Print in UpperCase", @"2. Print in LowerCase", @"3. Numberize", @"4. Canadianize", @"5. Respond Message", @"6. De-Space-It"];
        NSLog(@"%@",textOptions);
            
        char inputChars[22];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        strtok(inputChars, "\n");
        printf("Your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            
        
        char inputNums[22];
        printf("Input a number: ");
        fgets(inputNums, 255, stdin);
        printf("Your number is %s\n", inputNums);
        NSString *inputNumbers = [NSString stringWithUTF8String:inputNums];
        NSString *numberizedNum = inputNumbers;
        int numberizedNumbers = [numberizedNum intValue];
                
        NSString *Upper = [inputString uppercaseString];
        NSString *Lower = [inputString lowercaseString];
        NSString *numberizedString = inputString;
        int num = [numberizedString intValue];
        NSString *ehMsg = @" eh?";
        NSString *appendStrings = [NSString stringWithFormat:@"%@%@", inputString, ehMsg];
        NSString *questionString = inputString;
        NSString *newString = [questionString stringByReplacingOccurrencesOfString: @"\n" withString: @""];
        NSString *despaceString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        
        switch (numberizedNumbers) {
                
        case 1:
        //Print out the input message in Upper Case
        NSLog(@"%@",Upper);
        break;
                
        case 2:
        //Print out the input message in Lower Case
        NSLog(@"%@", Lower);
        break;
        
        case 3:
        //Numberize the input message
        NSLog(@"%d", num);
        break;
        
        case 4:
        //Canadianize the input message
        NSLog(@"%@", appendStrings);
        break;
        
        case 5:
        //Respond Message
        if([newString hasSuffix:@"?"]) {
           NSLog(@"I don't know");
        }
            else if([newString hasSuffix:@"!"]) {
               NSLog(@"Whoa, calm down!");
        }
        break;
        
        case 6:
        //De-Space-It
        NSLog(@"%@", despaceString);
        break;
                
            }
                             }
    }
    
    return 0;
}
