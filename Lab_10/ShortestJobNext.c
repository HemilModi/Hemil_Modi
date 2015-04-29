#include<stdio.h>


int waitingTime[20],serviceTime[20],processNumber[20],turnArroundTime[20];
//sorting burst time in ascending order using selection sort
void sortBurstTime(int n){
 
   int temp,pos,i,j;
   for(i=0;i<n;i++)
    {
        pos=i;
        for(j=i+1;j<n;j++)
        {
            if(serviceTime[j]<serviceTime[pos])
                pos=j;
        }

        temp=serviceTime[i];
        serviceTime[i]=serviceTime[pos];
        serviceTime[pos]=temp;

        temp=processNumber[i];
        processNumber[i]=processNumber[pos];
        processNumber[pos]=temp;
    }
}
float waitTime(int n){
    //calculate waiting time
    int i,total=0,j;
    float avg_waitingTime;
	for(i=1;i<n;i++)
    {
        waitingTime[i]=0;
        for(j=0;j<i;j++)
            waitingTime[i]=waitingTime[i]+serviceTime[j];

        total=total+waitingTime[i];
    }

    avg_waitingTime=(float)total/n;      //average waiting time
    return avg_waitingTime;
}

float turnArround(int n){
	
	int i,total =0;
	float avg_turnArroundTime;
	printf("\nProcess\t Burst Time\t Waiting Time\t Turnaround Time");
    for(i=0;i<n;i++)
    {
        turnArroundTime[i]=serviceTime[i]+waitingTime[i];     //calculate turnaround time
        total+=turnArroundTime[i];
        printf("\np%d\t\t  %d\t\t    %d\t\t\t%d",processNumber[i],serviceTime[i],waitingTime[i],turnArroundTime[i]);
    }

    avg_turnArroundTime=(float)total/n;     //average turnaround time
	return avg_turnArroundTime;
}
void main()
{
    int i,n;
    float avg_wt,avg_tat;
    
    printf("--------------------------------------------------------------------\n");
    printf("\t\tSHORTEST JOB NEXT -SCHEDULING\n");
    printf("--------------------------------------------------------------------\n");
	printf("Enter number of process:");
    scanf("%d",&n);

    printf("\nEnter Service Time:\n");
    for(i=0;i<n;i++)
    {
        printf("p%d:",i+1);
        scanf("%d",&serviceTime[i]);
        processNumber[i]=i+1;           //contains process number
    }

    sortBurstTime(n);
    waitingTime[0]=0;            //waiting time for first process will be zero
	avg_tat = waitTime(n);
    avg_wt = turnArround(n);
    printf("\n\nAVERAGE WAITING TIME=%f",avg_wt);
    printf("\nAVERAGE TURNARROUND TIME=%f\n",avg_tat);

}
