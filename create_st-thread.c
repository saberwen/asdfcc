/*
 * ======================================================================================
 *    Author:          saberwen saberwen@hotmail.com
 *    Create Time:     2014年11月07日 16时59分54秒
 *    File Name:       test.c 
 *    Description:  
 *
 * ======================================================================================
 */
#include <stdio.h>
#include <stdlib.h>

/*
 * build and execute
 *      gcc -I../obj -g filename.c ../obj/libst.a -o filename
 *      ./filename 10000
 *  10k report:
 *      10000 threads, running on 1 CPU 512M machine,
 *      CPU 6%, MEM 8.2% (~42M = 42991K = 4.3K/thread)
 *  30k report:
 *      30000 threads, running on 1 CPU 512M machine,
 *      CPU %3, MEM 24.3% (4.3K/thread)
 */
#include "st.h"

/* 
 *  FunctionName:  do_calc
 *  Description:  
 */
void* do_calc( void *arg )
{
	int sleep_ms = (int)(long int)(char *)arg * 10;

	for ( ;; )
	{
		printf( "in st thread #%dms\n", sleep_ms );
		st_usleep(sleep_ms * 1000);
	}

	return NULL;
}		/* -----  end of function do_calc  ----- */


/* 
 *  FunctionName: main 
 *  Description:  
 */
int main( int argc, char *argv[] )
{
	if ( argc <=1 )
	{
		printf( "Test the concurrence of state-threads!\n"
				"Usage: %s <st-thread_count>\n"
				"eg. %s 10000\n", argv[0], argv[0]
				);
		return -1;
	}

	if ( st_init() < 0 )
	{
		printf( "st_init() error!\n" );
		return -1; 
	}

	int i = 0;
	int count = atoi(argv[1]);
	for ( i=1; i<=count; i++ )
	{
		
		if ( st_thread_create(do_calc, (void *)i, 0, 0) == NULL )
		{
			printf( "st_thread_create() error!\n" );
			return -1;
		}
	}

	st_thread_exit(NULL);

	printf( "end main.\n" );
	return EXIT_SUCCESS;
}				/* ----------  end of function main  ---------- */
