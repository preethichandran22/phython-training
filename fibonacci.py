#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      preethika
#
# Created:     19-11-2024
# Copyright:   (c) preethika 2024
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def main():
    pass

if __name__ == '__main__':
    main()
inp=int(input("enter the number"))
n1,n2=0,1
count=0
if inp<=0:
    print("enter the positive value")
else:
    print("fibonnacci seies:")
while count<inp:
    print(n1)
    nth=n1+n2
    n1=n2
    n2=nth
    count+=1
