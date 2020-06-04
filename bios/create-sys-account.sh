clpoc create account potato poc.token POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.msig POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.bpay POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.names POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.ram POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.ramfee POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.saving POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.stake POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1
clpoc create account potato poc.vpay POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g POC6Sh24oioqa4aeBvsAnAYnUvZ5ct2g11SnPadU1v8Wwebo4pR1g -p potato & sleep 1

clpoc set contract poc.token contracts/poc.token -p poc.token & sleep 1
clpoc set contract poc.msig contracts/poc.msig -p poc.msig & sleep 1

clpoc push action poc.token create '["potato", "1000000000000.0000 POC", 0, 0, 0]' -p poc.token & sleep 1
clpoc push action poc.token issue '["potato", "1000000000000.0000 POC", "issue"]' -p potato & sleep 1

clpoc set contract potato contracts/poc.system -p potato & sleep 1
clpoc push action potato init '[0, "4,POC"]' -p potato@active & sleep 1
clpoc push action potato setpriv '["poc.msig", 1]' -p potato@active & sleep 1
