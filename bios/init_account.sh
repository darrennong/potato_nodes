clpoc create account potato poc.token POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.msig POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.bpay POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.names POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.ram POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.ramfee POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.saving POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.stake POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
clpoc create account potato poc.vpay POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV POC6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV -p potato
cd /home/anbox/potato_coin/potato.contracts
clpoc set contract poc.token build/contracts/poc.token -p poc.token
clpoc set contract poc.msig build/contracts/poc.msig -p poc.msig

clpoc push action poc.token create '["potato", "1000000000000.0000 POC", 0, 0, 0]' -p poc.token
clpoc push action poc.token issue '["potato", "1000000000000.0000 POC", "issue"]' -p potato

clpoc set contract potato build/contracts/poc.system -p potato
clpoc push action potato setpriv '["poc.msig", 1]' -p potato@active
clpoc push action potato init '[0, "4,POC"]' -p potato

clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 8888888 potato pcbpa POC7G13YMawwaKbLyFsnXAXNeseGnXUMJz2YZ12mekHSZDY8LzWuS POC7G13YMawwaKbLyFsnXAXNeseGnXUMJz2YZ12mekHSZDY8LzWuS -p potato
clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 8888888 potato pcbpb POC7BNsNtgZpppR95VpJ3gnnrK4VxU5XkvBqxVsSkrvbanwrmRVsE POC7BNsNtgZpppR95VpJ3gnnrK4VxU5XkvBqxVsSkrvbanwrmRVsE -p potato
clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 8888888 potato pcbpc POC6jbWyoA2RuTS9w7Epb1ANumBZEisLuo7AzLWLexQ4D1rdwLdaq POC6jbWyoA2RuTS9w7Epb1ANumBZEisLuo7AzLWLexQ4D1rdwLdaq -p potato
clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 8888888 potato pcbpd POC87HCEnMzvQoSRMsFipCmWk89cc81AMkfiFro1T91F6u6WVpF6C POC87HCEnMzvQoSRMsFipCmWk89cc81AMkfiFro1T91F6u6WVpF6C -p potato
clpoc system newaccount --stake-net "50.0000 POC" --stake-cpu "50.0000 POC" --buy-ram-kbytes 8888888 potato pcbpe POC7QUuZhpEJbS9nn9LfSSRwb54bb1QtjopVBNQEq6DQxWNBbwmvb POC7QUuZhpEJbS9nn9LfSSRwb54bb1QtjopVBNQEq6DQxWNBbwmvb -p potato

clpoc transfer potato pcbpa "9000000000.0000 POC" "init pcbpa"
clpoc transfer potato pcbpb "9000000000.0000 POC" "init pcbpb"
clpoc transfer potato pcbpc "9000000000.0000 POC" "init pcbpc"
clpoc transfer potato pcbpd "9000000000.0000 POC" "init pcbpd"
clpoc transfer potato pcbpe "9000000000.0000 POC" "init pcbpe"

clpoc system regproducer pcbpa POC7G13YMawwaKbLyFsnXAXNeseGnXUMJz2YZ12mekHSZDY8LzWuS https://poc.h5ex.com/pcbpa
clpoc system regproducer pcbpb POC7BNsNtgZpppR95VpJ3gnnrK4VxU5XkvBqxVsSkrvbanwrmRVsE https://poc.h5ex.com/pcbpb
clpoc system regproducer pcbpc POC6jbWyoA2RuTS9w7Epb1ANumBZEisLuo7AzLWLexQ4D1rdwLdaq https://poc.h5ex.com/pcbpc
clpoc system regproducer pcbpd POC87HCEnMzvQoSRMsFipCmWk89cc81AMkfiFro1T91F6u6WVpF6C https://poc.h5ex.com/pcbpd
clpoc system regproducer pcbpe POC7QUuZhpEJbS9nn9LfSSRwb54bb1QtjopVBNQEq6DQxWNBbwmvb https://poc.h5ex.com/pcbpe

clpoc system delegatebw pcbpa pcbpa '100000000.0000 POC' '100000000.0000 POC'
clpoc system delegatebw pcbpb pcbpb '100000000.0000 POC' '100000000.0000 POC'
clpoc system delegatebw pcbpc pcbpc '100000000.0000 POC' '100000000.0000 POC'
clpoc system delegatebw pcbpd pcbpd '100000000.0000 POC' '100000000.0000 POC'
clpoc system delegatebw pcbpe pcbpe '100000000.0000 POC' '100000000.0000 POC'

clpoc system voteproducer prods pcbpa pcbpa -p pcbpa
clpoc system voteproducer prods pcbpb pcbpb -p pcbpb
clpoc system voteproducer prods pcbpc pcbpc -p pcbpc
clpoc system voteproducer prods pcbpd pcbpd -p pcbpd
clpoc system voteproducer prods pcbpe pcbpe -p pcbpe
