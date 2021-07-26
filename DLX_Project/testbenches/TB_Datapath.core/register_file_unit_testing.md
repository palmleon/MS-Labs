# Unit Testing for Register File

* Inputs and Outputs*

Inputs: 
- RESET
- ENABLE
- RD1
- RD2 
- WR
- ADD_WR 
- ADD_RD1
- ADD_RD2
- DATAIN

Outputs:
- OUT1
- OUT2

** Criteria of input **

- Active Reset 
- Active Enable
- Active RD1
- Active RD2
- Active WR
- ADD_RD1 < Nregs
- ADD_RD2 < Nregs
- ADD_WR < Nregs
- ADD_RD1 == ADD_RD2
- ADD_RD1 == ADD_WR
- ADD_RD2 == ADD_WR


** Predicates about input **

| Criteria | Predicate | 
| ---------|------------|
| Active Reset | True | 
| 				| False |
| Active Enable | True |
|				| False |
| Active RD1 | True |
| 			 | False |
| Active RD2 | True |
|			 | False |
| Active WR | True |
|			| False  |
| ADD_RD1 < Nregs | True |
|					| False |
| ADD_RD2 < Nregs | True |
|					| False |
| ADD_WR < Nregs | True |
|					| False |
| ADD_RD1 == ADD_RD2 | True |
|					 | False |
| ADD_RD1 == ADD_WR | True |
|					| False |
| ADD_RD2 == ADD_WR | True |
| 					| False |

** Combination of Predicates **

| Active RST | Active EN | Active RD1 | Active RD2 | Active WR | ADD_RD1 < Nregs | ADD_RD2 < Nregs | ADD_WR < Nregs | ADD_RD1 == ADD_RD2 | ADD_RD1 == ADD_WR | ADD_RD2 == ADD_WR | Valid/Invalid | Test Case |	
|------------|-----------|------------|------------|-----------|-----------------|-----------------|----------------|--------------------|-------------------|-------------------|---------------|-----------|				  
|	  T 	 |	   *	 |		*	  |		*	   |     * 	   | 	   * 	  	 |         *	   |		*	  	|		 * 		     | 			*		 | 			*		 | 	     V		 | T1(1, 1, 1, 1, 1, 0, 0, 0, 1) -> OUT1 = 0, OUT2 = 0 |
|	  F 	 |	   F	 |		*	  |		*	   |     * 	   | 	   // 	     |         //      | 		//      |		 *   	 	| 		    *		 | 			*	     | 	   V	     | T2(0, 0, 1, 1, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z |
|	  F 	 |     T	 |      T     |		*	   |	 *	   |       F         | 		  *		   |		*       |    	  *		     |		   *	     |		   *		 |	      I	     | T3(0, 1, 1, 0, 0, 0, Nregs, 0, 1) | 	
|	  // 	 |     //	 |      *     |		T	   |	 *	   |       * 	     |	      F 	   |		*	    |		  *		     |			*		 |		   *	     |	   	  I	     | T4(0, 1, 0, 1, 0, 0, 0, Nregs, 1) | 	
|	  // 	 |     //	 |      *     |		*	   |	 T	   |       *         |	      *	       |		F	    |		  *		     |			*		 |		 	*		 |	   	  I	     | T5(0, 1, 0, 0, 1, Nregs, 0, 0, 1) |
|	  // 	 |     //	 |      F     |		F	   |	 T	   |       *         | 		  * 	   |		T       |    	  *		     |		   *	     |		   *		 |	      V	     | T6(0, 1, 0, 0, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z | 
|	  // 	 |     //	 |      F     |		T	   |	 F	   |       *         | 		  T		   |		*       |    	  *		     |		   *	     |		   *		 |	      V	     | T7(0, 1, 0, 1, 0, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = 1| 
|	  // 	 |     //	 |      F     |		*	   |	 *	   |       F         | 		  T		   |		T       |    	  *		     |		   *	     |		   *		 |	      V	     | T8(0, 1, 0, 1, 1, 0, Nregs, 0, 1) -> OUT1 = Z, OUT2 = 1| 
|	  // 	 |     //	 |      T     |		F	   |	 F	   |       T         | 		  * 	   |		*       |    	  *		     |		   *	     |		   *		 |	      V	     | T9(0, 1, 1, 0, 0, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = Z| 
|	  // 	 |     //	 |      *     |		F	   |	 *	   |       T         | 		  *		   |		T       |    	  *		     |		   *	     |		   *		 |	      V	     | T10(0, 1, 1, 0, 1, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = Z| 
|	  // 	 |     //	 |      *     |		*	   |	 F	   |       T         | 		  T		   |		*       |    	  *		     |		   *	     |		   *		 |	      V	     | T11(0, 1, 1, 1, 0, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = 1| 
|	  //	 |	   //	 |		F	  |		F	   |	 F	   |	   *		 |		  *		   |		*		|		  *			 |			*		 |			*		 |		 V		 | T12(0, 1, 0, 0, 0, Nregs, Nregs, Nregs, 1) -> OUT1 = Z, OUT2 = Z|
|	  // 	 |	   //	 |	    F	  |		F	   |     F 	   | 	   T 	     | 		   T	   |        T		|		 * 		   | 		*		   | 		*		   | 	   V	   | T13(0, 1, 0, 0, 0, 0, 1, 1, 1) -> OUT1 = Z, OUT2 = Z |
|	  // 	 |	   //	 |		F	  |		F	   |     T 	   | 	   //	     | 		   //	   |        //		|	     * 		   | 		*		   | 		*		   | 	   V	   | T14(0, 1, 0, 0, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z |
|	  // 	 |	   //	 |		F	  |		T	   |     F 	   | 	   // 	     | 		   //	   |        //		| 		 * 		   | 		*		   | 		*		   | 	   V	   | T15(0, 1, 0, 1, 0, 1, 0, 0, 1) -> OUT1 = Z, OUT2 = 1 |
|	  // 	 |	   //	 |	    F	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 * 		   | 		*		   | 		F		   | 	   V	   | T16(0, 1, 0, 1, 1, 0, 0, 1, 1) -> OUT1 = Z, OUT2 = 0 |
|	  // 	 |	   //	 |	    F	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 * 		   | 		*		   | 		T		   | 	   V	   | T17(0, 1, 0, 1, 1, 0, 1, 0, 2) -> OUT1 = Z, OUT2 = 2 |
|	  // 	 |	   //	 |		T	  |		F	   |     F 	   | 	   // 	     | 		   //	   |        //		| 		 * 		   | 		*		   | 		*		   | 	   V	   | T18(0, 1, 1, 0, 0, 0, 0, 1, 1) -> OUT1 = 1, OUT2 = Z |
|	  // 	 |	   //	 |		T	  |		F	   |     T 	   | 	   //	     | 		   //	   |        //		|  		 * 		   | 		F		   | 		*		   | 	   V	   | T19(0, 1, 1, 0, 1, 1, 0, 1, 1) -> OUT1 = 2, OUT2 = Z |
|	  // 	 |	   //	 |		T	  |		F	   |     T 	   | 	   //	     | 		   //	   |        //		|  		 * 		   | 		T		   | 		*		   | 	   V	   | T20(0, 1, 1, 0, 1, 0, 0, 1, 3) -> OUT1 = 3, OUT2 = Z |
|	  // 	 |	   //	 |		T	  |		T	   |     F 	   | 	   // 	     | 		   //	   |        //		| 		 F 		   | 		*		   | 		*		   | 	   V	   | T21(0, 1, 1, 1, 0, 0, 1, 0, 1) -> OUT1 = 1, OUT2 = 3 |
|	  // 	 |	   //	 |		T	  |		T	   |     F 	   | 	   // 	     | 		   //	   |        //		| 		 T 		   | 		*		   | 		*		   | 	   V	   | T22(0, 1, 1, 1, 0, 0, 1, 1, 1) -> OUT1 = 1, OUT2 = 1 |
|	  // 	 |	   //	 |		T	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 F 		   | 		F		   | 		F		   | 	   V	   | T23(0, 1, 1, 1, 1, 0, 1, 2, 1) -> OUT1 = 1, OUT2 = 0 |
|	  // 	 |	   //	 |		T	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 F 		   | 		F		   | 		T		   | 	   V	   | T24(0, 1, 1, 1, 1, 0, 1, 0, 1) -> OUT1 = 1, OUT2 = 1 |
|	  // 	 |	   //	 |		T	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 F 		   | 		T		   | 		F		   | 	   V	   | T25(0, 1, 1, 1, 1, 0, 0, 1, 2) -> OUT1 = 2, OUT2 = 1 |
|	  // 	 |	   //	 |		T	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		| 		 T 		   | 		F		   | 		F		   | 	   V	   | T26(0, 1, 1, 1, 1, 0, 1, 1, 1) -> OUT1 = 1, OUT2 = 1 |
|	  // 	 |	   //	 |		T	  |		T	   |     T 	   | 	   // 	     | 		   //	   |        //		|  		 T 		   | 		T		   | 		T		   | 	   V	   | T27(0, 1, 1, 1, 1, 0, 0, 0, 3) -> OUT1 = 3, OUT2 = 3 |





















