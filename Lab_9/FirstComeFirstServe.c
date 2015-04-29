#include<stdio.h>

int n, arrivalTime[20],serviceTime[20];

void display()
{
	int i;
     printf("\nPROCESS\tBURST TIME\tARRIVAL TIME6\n");
     for(i=0; i<n; i++)
     {
             printf("    %d\t      %d\t      %d\n",i+1,serviceTime[i],arrivalTime[i]);
     }
}

void waitTime()
{
     int temp[100],i;
     float totalWait=0;
     temp[0]=0;
     for(i=1; i<n; i++)
     {
           temp[i]=serviceTime[i-1]-arrivalTime[i]+temp[i-1];
           totalWait=temp[i]+totalWait;
     }
     printf("\nTotal Waiting time = %f",totalWait);
     printf("\nAverage Waiting time = %f",totalWait); 
}

void turnAroundTime()
{
     int turnAroundTime[100],i;
     float totalTurnAroundTime=0;
     turnAroundTime[-1]=0;
     for(i=0; i<n; i++)
     {
             turnAroundTime[i]=serviceTime[i]-arrivalTime[i]+turnAroundTime[i-1];               
             totalTurnAroundTime=totalTurnAroundTime+turnAroundTime[i];
     }
     printf("\n\nTotal Turn Around Time = %f",totalTurnAroundTime);
     printf("\nAverage Turn Around Time Avg. = %f",totalTurnAroundTime/n);
}

int main()
{
    printf("\n-----------------------------------------------------------------\n");
    printf("\t\tFIRST COME FIRST SERVE - SCHEDULING\n");
    printf("\n-----------------------------------------------------------------\n\n");

    
    char c;
    int i;
    printf("Number of process in the system:");
    scanf("%d",&n);

    for(i=0; i<n; i++)
    {
          printf(" Enter burst time of Process %d :  ",i+1);
          scanf("%d",&serviceTime[i]);
          
          printf(" Enter arrival time of Process %d : ",i+1);
          scanf("%d",&arrivalTime[i]);
    }

    
    display();
    waitTime();
    turnAroundTime();
    
}

