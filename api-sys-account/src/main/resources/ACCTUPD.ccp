       01 ACCOUNT-UPDATE-IN.
         02 CUST-NO PIC X(4).
         02 NUMBER-OF-ACCOUNTS     PIC S9(4) COMP.
         02 ACCOUNT-DETAILS OCCURS 5 TIMES.
           03 ACCT-NUMBER          PIC X(8).
           03 BALANCE              PIC X(8).
           03 OVERDRAFT            PIC X(8).

       01 RETURN-DATA.
         02 RETURN-STATUS          PIC X(4).
         02 RETURN-MSG             PIC X(20).