{{
    config(
        schema = 'tokens_bnb'
        ,alias = 'bep20'
        ,tags = ['static']
        ,materialized = 'table'
    )
}}

SELECT
    contract_address
    , symbol
    , decimals
FROM (VALUES
    (0x57a5297f2cb2c0aac9d554660acd6d385ab50c6b, 'vLTC', 8)
    , (0xb248a295732e0225acd3337607cc01068e3b9c10, 'vXRP', 8)
    , (0x860ea5712db042de011c4ffb2789bdcb2bff9828, 'anyNFTY', 18)
    , (0x43242138833e8d360e84920462a483eb9e35c8b4, 'anyFUSE', 18)
    , (0xbf731bfa03e0095a2039e7e4c3b466efb7f3ec4e, 'anyMATIC', 18)
    , (0x977b4fec686ad3d37dfc7c54336a26113d4c1393, 'anyATEM', 18)
    , (0x51688bf5b9c87c61af3fe18c94281cfbc872a119, 'LUA', 18)
    , (0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c, 'ACBTC', 18)
    , (0xded6a27debe293d373bc4bfed4ae8d70fbc80001, 'BOOST', 18)
    , (0xfa9343c3897324496a05fc75abed6bac29f8a40f, 'TITAN', 18)
    , (0xc071a68ca3cc9f9b553b0eaae0cf9937c43b6219, 'ART', 18)
    , (0xde434ef0e6e0ab65f62784fddd86531d8b8a6c42, '16', 18)
    , (0x47427c7febaab1b181ee0adf1fece827d7d20fd5, 'SPE', 18)
    , (0xc9b264748538d0b7928ad0428b94cd7f26a150ea, 'SIM', 18)
    , (0xe626f94bcd8f66956ea96e04fa0afcdbc146902b, 'Xmen', 18)
    , (0x1284970541d8ada703dbb5f3287c2db608a1d70f, 'anySPACE', 18)
    , (0xebd949aacfc681787d3d091fa2929e4413e0e4e1, 'ACRE', 18)
    , (0x22e7f79c547d676baf561032bf64d51d6ceb5f3f, 'anyMOD', 18)
    , (0x4b6e3a07335ab6558b7c5251601a18096944f665, 'anyEXZO', 9)
    , (0x03a99830a543f35bf9c2c8a56d48b1dbe9a45f4e, 'MWAT', 18)
    , (0x0f9c0a22fdef62f88c981188351ab531cfec00e6, 'ETHA', 18)
    , (0x14943e8bdf07049470b6a001f9b09ddad0c0065b, 'anyFLOKIFM', 9)
    , (0x6e6bed1409e7c1eebec4b0df0419b32e0c6314ba, 'ZDEX', 18)
    , (0x80a16016cc4a2e6a2caca8a4a498b1699ff0f844, 'NEXT', 18)
    , (0x83085138ed8a96ec0cbd2013ddfe1ebb975940cc, 'BAC', 18)
    , (0x96a70751fd5bf2b18091b99ef7689b9a3a90920e, 'WSSQUID', 18)
    , (0xb6246d51f3bd98608f26e866f1453109f8f76809, 'IOTEXCHART', 18)
    , (0xcc41555e193d56b2b5c07db69418d90dfaf20c08, 'anyONX', 18)
    , (0xda8929a6338f408cc78c1845fb4f71bffd2cfcfb, 'HSF', 18)
    , (0x54e47d75ba5f623fc9d0a2a3dfd9d8d5b2e98bea, 'BIF', 18)
    , (0xb9f25322911b15f35d4c58c2822fab9edfd66850, 'SPORT', 18)
    , (0x7828ff4aba7aab932d8407c78324b069d24284c9, 'mooBIFIV2', 18)
    , (0xcaf8f274d2b46632bb46947292088d9a67fc1aba, 'LITC', 18)
    , (0xe58662a9eef0663be311d1af45c37644c6580ede, 'TINO', 18)
    , (0xec39df0c6d81f2beddc28d43c7e2369fc87c5ad7, 'BTC', 18)
    , (0xebfc19c778bf51b7b64492c7113d1108e5e2fe01, 'TBT', 18)
    , (0x65d83463fc023bffbd8ac9a1a2e1037f4bbdb399, 'dexSHARE-BNB', 18)
    , (0xc170908481e928dfa39de3d0d31bea6292692f8e, 'CUSDCLP', 18)
    , (0x0377facbddbee59d40869808bb67fa741038bc67, 'XTF', 18)
    , (0x632fbf85f77978437073a8ce5ceec29e3209514c, 'vUNIT', 18)
    , (0x634398cb81b76bfc75ebb434cf7c82036f9e7d78, 'anyHGET', 6)
    , (0x0acaabc390d7d7134eef4166f61e3e30b362f675, 'anyYIN', 18)
    , (0x1282911d3600b202698997f61f46379db3b9f01e, 'anyDAI', 18)
    , (0x51634caff769b4a04d9b40e06198a4c451f896b5, 'anyAfin', 18)
    , (0xeb2f197b3467b02dd8f36b09b2d179c250352ff3, 'anyZAP', 18)
    , (0x49974c3c99f4e74d08845c31d3f4f16fdc264ebd, 'anyBNB', 18)
    , (0x18ac7323615f1fabf332ff4afca735eaf6dd9668, 'SOAR', 9)
    , (0x27fdc52e83bfe163d620af68f54ddbec26bfacc8, 'QRDO', 8)
    , (0x7af3f80c5788a9f83800d308be671bdd3c0db796, 'UOP', 18)
    , (0xe5cf1558a1470cb5c166c2e8651ed0f3c5fb8f42, 'anyDOPE', 18)
    , (0x00750faa983ba60b9d22a389221fba91e963202a, 'KIT', 18)
    , (0xcd28d5353c6612f76ada912a83f5c7107b1ecd4c, 'PPMART', 8)
    , (0x4273627886154333d75a9d7a3c64ecbde0c8fd0e, 'TestEuro', 18)
    , (0x90e8f299e6222ac3474ce241843e17cbd4371a56, 'BOB', 8)
    , (0x88a83357ac52b43322e6caa328de24bcfef01770, 'DOOE', 18)
    , (0xdade0278c24610cd8a5206099f68251fb7c0855c, 'SpaceNFT', 18)
    , (0xf91d58b5ae142dacc749f58a49fcbac340cb0343, 'vFIL', 8)
    , (0xdd03dbed9abdb125f1bdd465caadbefdff4f7524, 'anyFRAX', 18)
    , (0x46dcb8fb3022652b1980f1ffaeaf2bb2104be09c, 'anyPLG', 18)
    , (0x051048fda2c88e1bed3af811fa3dcd10ddd350a0, 'anyIDEX', 18)
    , (0x1f9ce5ac8befa74bfa614ae22ffc0fdd1e06827e, 'anyDUET', 18)
    , (0x4b6f0494b08d6f387b392cb9f56539b238de3367, 'anyCTSI', 18)
    , (0xba0626fdd269140fda8919b33c5585137daffed5, 'CRAFT', 18)
    , (0x3222b546981ca597842cb271138e26ea1afab44a, 'anyALPACA', 18)
    , (0x890fca365e1438b5adb58a53413c4bf6cbb1bde8, 'anyIOTX', 18)
    , (0x64b84d2eab43109220c84e0b163fb073fe125223, 'anyALPHA', 18)
    , (0x02a5ad4597f7a090148ed209e022555ec2afdbc7, 'anyQI', 18)
    , (0x2244faab5a2a633cb7f6e3d35e7db8ec0136d3e2, 'anyPERI', 18)
    , (0xac118686565af7393b0843587d483cbded9c3baf, 'EDDA', 18)
    , (0xc6fd4c36a822d43283b79cce07d015a1faf7b321, 'COIIN', 18)
    , (0x5ef90724f8845eb3048a422ed627cb8105835860, 'RPAX', 18)
    , (0x21e6d42f4176d6ca1a97fc606f80d500416f2650, 'SAFU', 18)
    , (0xe6ca8a8f2903b0d3163c2f10205f08199de6b96b, 'WEX', 18)
    , (0xb16b7de1e541362df3f0ab81a080bb9fde6ac9a9, 'HOCK', 18)
    , (0x52188b986665ddf39abcd7c5baecc25db7def3a3, 'AMEX', 9)
    , (0x12b2c0e31b21356f17312a46df1b6d8baab5dba5, 'ANF', 18)
    , (0x755bff49a5c3be58c52ce3a9d2f5cb392f6d273b, 'UVA', 18)
    , (0x83fc51a3a35d3e2a2c42003df964294062f505a2, 'anyLINK', 18)
    , (0x2f4a4fdcf8c77d63c2c967c07a61bdf8992c3c50, 'anyOVR', 18)
    , (0x1ad8b8b151b7d408c757ed0d583e9b7c2f78ce19, 'anyCDS', 8)
    , (0x447c1c18979e71161eda8c4d0a0b9cb2d0d26ce0, 'anymWSPP', 18)
    , (0x40642f7f80138913ca239306aa74f1acaef6b0e8, 'anyMRXb', 8)
    , (0x657c620fee04a225e57822606c357d21663d507c, 'anyFEED', 18)
    , (0x0551b4c819bc50101f6961f29cfb277aa998cebc, 'DSHARE', 18)
    , (0x0b32357430fe98c24b2b245b815af68bc9ecfdad, 'BEPRO', 18)
    , (0x1a6990fcce4fe96be417d48f60b7ea5cc329de80, 'NIF', 18)
    , (0x3831dfef762f4f64261f2d875c710f90038578e4, 'KALLY', 18)
    , (0x4b27cd6e6a5e83d236ead376d256fe2f9e9f0d2e, 'SKYRIM', 18)
    , (0xacb5f391f51e15418845bec74781bdd1cbe0fd89, 'MYTH', 18)
    , (0xc1be9a4d5d45beeacae296a7bd5fadbfc14602c4, 'VID', 18)
    , (0xd0c5bad763432f22ebf21da947395d8fc2d11145, 'LUXY', 18)
    , (0x396c5803c2236345c7ff932bdb3cdca8622a6312, 'ANA', 18)
    , (0x1d9919961fef5dadb75ef7ab2c741e908f9008c5, 'Panda', 18)
    , (0xfef45669a5e0f7bdf6b024949febb3585e40c4d4, 'drkblue', 18)
    , (0xa43737811413d22f4add79f21052d90d912810e6, 'AKAC', 18)
    , (0x698f6f1c8f9aaa4b04329cc2d6e1b3ea1c9d262b, 'CREAM', 18)
    , (0x648a5e676855152a7121826e67c320f7cb04d070, 'MetaDoge', 18)
    , (0xbf011e3bc9e031e5f409d9c72963e9fbc7764eae, 'ICE', 8)
    , (0xb9634c5ba4c94aebcab0d5ae4074bb2ffe49b6a1, 'NSC', 18)
    , (0x3579dbcbc7d55a37f2b1c5540d3e1733b58388fe, 'SGEM', 18)
    , (0x9833c643f387ecfb76aa8114546ad524703c66fb, 'anyLPK', 18)
    , (0x0653553e574657410d41ce758db36617f409b6c5, 'anyBTCB', 18)
    , (0x768b63c11d66a1d9cb2a9a1779f25ef275f76647, 'anyVSN', 18)
    , (0xc55d3a143e16e509358ccb09c00aed072efd48e0, 'anybBzB', 18)
    , (0x29dfd3d644b18e0345eed3a3c94b4efe35f2771b, 'METRIC', 18)
    , (0x69728c8d55158cdfdcf1f92f5e46e3260c326b61, 'Duck', 18)
    , (0x71dac8830de5d2e26b42b878e7c0f1ef687c082b, 'FTBL', 18)
    , (0xed4ea41daf652964789b16e3ff76ec07d99d2340, 'mooBanana', 18)
    , (0x0c83066f88b1d292c9a046e49339ac99eada15a8, 'zoom', 18)
    , (0x9bd547446ea13c0c13df2c1885e1f5b019a77441, 'TREE', 2)
    , (0xbb244fc91e86c5a4b9d31b2935c5bc57c034bfa1, 'anyUNCL', 18)
    , (0x5eff9315e6b24e3dc268f65e93bac8af28d03063, 'anyCROX', 18)
    , (0xf9d051603fa3a69967e93c5b506ccf0292ccd849, 'anyBabyDoge', 9)
    , (0x59d66751eff67d7150196b4086afcc0313163026, 'anyCIFI', 18)
    , (0x655ed56a36cedbbd24f45e564643b85e5c346a5d, 'DWEB', 18)
    , (0x85f0d0c799f1ddd9c255f074ef0fa6abe5f32eb9, 'anySLEEPEE', 18)
    , (0xcc9b1f919282c255eb9ad2c0757e8036165e0cad, 'PTT', 18)
    , (0xe7b91602ce96a537cb729f484b8ddb3c1fecbb45, 'ALICE', 6)
    , (0x681c4a20a96905f856e1e81215acc3d4fd281a76, 'GreatWallCoin', 18)
    , (0x846da4dd99c573ddf5cb2ed6f5a84472a46c4264, 'ILNR', 18)
    , (0x188312726988f8a11a8a10b56ddd7946dc2949c5, 'zoo', 18)
    , (0x90e2ab3cea7154f2eb1b20459ee8686a19d4e29a, 'FESTIVOL', 18)
    , (0xc921c985cdf0dbce35be087db018b1eaa98446d4, 'MEATPIE', 9)
    , (0xdde077002982956df24e23e3f3743ba5e56929fe, 'ADAM', 8)
    , (0xdb55e6ae289e1f40add06716e55892dd9e99dbba, 'CRWYS', 18)
    , (0x0aa1c047980e9dc47b75f9c0f9eb1c494966121b, 'RBUSD', 18)
    , (0xf6655af5874d2d6d3dd8cc9c03ab358253893204, 'FUCKELON', 18)
    , (0xb969792e669b92e2e6d33441a0c6caf3aee1d01d, 'anySALE', 18)
    , (0x5ec0d8751be5e7b1779430e62b8f61225a947b9c, 'anyEDC', 9)
    , (0x41a072b1c8d716721e407640e5b1fdcc714239ab, 'anyNFD', 18)
    , (0x2bfdf2adc0e8f738c4a1bca25c5c1d36072eba31, 'anyNPXB', 18)
    , (0xd0975664b2c276520722560ef7bda3e6ad4a734b, 'anyAIRT', 18)
    , (0x4ea6f39c719d3a77ce2e5b913312cf2999e6d19d, 'anyODDZ', 18)
    , (0x6c76545a0da5ae50a081dd1b8ae35daaa00b1352, 'anyXTR', 8)
    , (0x8506560320826e459f356cb56ccf721da8875414, 'nICE', 18)
    , (0x245d3238cbbe03f9b8e1bff4709d1ebdf22ced4b, 'FEG', 9)
    , (0x5d47baba0d66083c52009271faf3f50dcc01023c, 'ORME', 8)
    , (0xae8627db72d7fc6241f2e2b87eb2bbc7cafb1661, 'STAR', 18)
    , (0xf0a8a368989e1936d5a94d5fb1cb2cd94a7d8e2d, 'anyAUR', 18)
    , (0xf99fc9f2d4b9f6cc4d6e56b13c5ae7e0030fb406, 'anywBAN', 18)
    , (0xcc62bf3b104909e09cb204e16a1ba5711e0dc79d, 'USDT', 18)
    , (0xfb63f0621dc4dbe97b84476c65cee851851f7b13, 'SPID', 18)
    , (0xcd3941d4825c08991b98930ef18062f6df2959d4, 'moonTicketPOTSv3', 18)
    , (0x01fb70ea8acfdd5435c8e8bd1531d96d57ced0ec, 'SELECT', 18)
    , (0x03ee4919bf3cfb9b0362e17f739f8c2973616a86, 'anyHEP', 0)
    , (0x1dd20779c8facd5a60680c3f423137ca18155e47, 'anyBLAST', 9)
    , (0x2291fb9abafaad7d701f2cc26f4e89ae2ecb2b8f, 'anyTSA', 18)
    , (0x4699fb07df635bae3fa370d9f5f69b9857d49990, 'anyFINA', 18)
    , (0xccb24022c573b6c3877bf9eb19716c037b11d9eb, 'anyLACE', 18)
    , (0x559e9fc6a4d28d4b514f076724cb62f07ace862a, 'anyTUSD', 18)
    , (0x58340a102534080b9d3175f868aea9f6af986dd9, 'anyBSC-USD', 18)
    , (0x400e3a1ba43d272e576c237e51d0e1ef3253f153, 'anySPONGS', 9)
    , (0x3cbc101e0ab2ef6fed8eb9bea24e7ec97bfca98f, 'LMY', 18)
    , (0x5e23bea955bc322f2894d94faceca744bb5c3cf9, 'BASV2', 18)
    , (0xc7ed9aa2b7d302fd5a68dfbefe5f530f9bd35a06, 'PIRATEP', 18)
    , (0x119e0e21bceac77fdff858104662b7ec7a18ce77, '1000000', 18)
    , (0xbbff6734b630a12b2d0eb94a9262bf989dfba2e6, 'KZNH', 18)
    , (0x9fe6c656df376efd07dce6451124103e2f2d79d4, 'HERMES', 18)
    , (0x7c86085332482654d31de8576efdef0e25284b9e, 'BEST', 6)
    , (0x458230d400c49f3c0776031e012528d050c1021f, 'CRE', 18)
    , (0x514f696af215a33bc9856cd39bb4b3f7c04db690, 'anyMAHA', 18)
    , (0x204d3d2bbbf39a7bb85a00dd45fb0d2fe57a660b, 'anyPOND', 18)
    , (0xb139ed4143bceb793346020453ab1f9d886bd294, 'anyRADIO', 18)
    , (0x33e4cd013fcad9de00a1b12e8ae9dfea2342e4eb, 'anyDIBS', 18)
    , (0xc19b327b51227550a28e09a94bce23ea1e5abe00, 'anyFAN', 18)
    , (0x05409a4df9f5e2407642cc3f29e90d3589366bf2, 'EJS', 18)
    , (0x1fe5b870bca201db77bc0a8573fdebc35ee7a114, 'DEC', 18)
    , (0x315ccd12b4af427c578a50b8abdc6cee936fa080, 'SET', 18)
    , (0x43fbbe7a5397117b3da58722635832ba60905285, 'ERSDL', 18)
    , (0x55af5865807b196bd0197e0902746f31fbccfa58, 'SHO', 18)
    , (0x595c8481c48894771ce8fade54ac6bf59093f9e8, 'POLK', 18)
    , (0x702d161ed480e4a367a5810a6086074b791cf6a0, 'BSKT', 18)
    , (0x749fec660a245f8b4c3b9bbc8a1ebf1c22863c8e, 'PARETO', 18)
    , (0x8ad96050318043166114884b59e2fc82210273b3, 'NEX', 8)
    , (0x981e360161a37de663f232e6c800fc6a56fb536a, 'URQA', 18)
    , (0xbb10c3ba37b4da01a70d6f3f456c5323a11a76fb, 'SCA', 18)
    , (0xc325bd4c437a9a78eb8de486b5321253e650cf0d, 'DEGEN', 18)
    , (0xeaf26191ac1d35ae30baa19a5ad5558dd8156aef, 'NORD', 18)
    , (0x6987e03bf9e546da019d808683d72a9474ba4321, 'SoSwapToken', 18)
    , (0x85a389b8184f3f1b5dff939f40e9854292e3f855, 'alturaV1ALUBNB', 18)
    , (0xd9191d594c878dfbdcac12caaa26b23ef7eb1804, 'PGLM', 18)
    , (0x185f2a729cb9060886e87af9f35cf6ac7c9cd718, 'ALFA', 18)
    , (0xd11961d60aef942d7e9f7ba8071db00b9fadd976, 'niu', 18)
    , (0x5003c91913944f9a0ae82c729508808b3f7c7c7e, 'anyMYOBU', 9)
    , (0xcb93bf5c6c1d84a6f8fe163a64a56b9969a23329, 'anyOGX', 18)
    , (0xe06d45e4524b3191f69a01808f911555d8771341, 'anyAPE-X', 9)
    , (0xc05b9aba543dc4f1c19cdd73753d77f8cc75097d, 'any$MF', 18)
    , (0x35bc8f36ab08fc1b484d4c921a6f3b3c75e6d15d, 'anyIDIA', 18)
    , (0xadfc9a631157b59a65eb337fed810dab8879a5fd, 'anyTOAD', 18)
    , (0xbc70a08ece842698dd89dd7fc8767fc962e4533b, 'anyFroyo', 18)
    , (0xb52da8102e715d5e220aae2ef58e9f978fcdeb3f, 'anyBANANA', 18)
    , (0x865109a3eb981b2be9f66cbbc78653ba09e79128, 'anyPOTS', 18)
    , (0x4164a997b0b9a3de5e8ed35e59b015f9e892b7a9, 'DEGEN', 18)
    , (0xa0eda2d19211d108772711a3698c69f79673aec8, 'anyHOD', 18)
    , (0xe6358c1d7a91915abba46d9855bd6418898fc091, 'anyOMG', 18)
    , (0x1214e9938f52de8291de4fa91b845a148bc7f556, 'FFA', 18)
    , (0xddda1a2d691d3310f3b020ab49c7d9c798bc375a, 'BPST', 8)
    , (0x665e491be233e1001a343fdab84a6bf353a1f0f7, 'Krita', 18)
    , (0x818ec38328fbf77a45adca09cd98cba9a3d088b3, 'CAKE', 18)
    , (0x8dfd366ff98390ea35eaacb35673279218a596a5, 'TYC', 18)
    , (0x70523d78a74f5533768075283bcb473ca01a8a4b, 'FXS', 18)
    , (0xe5b834d5086564de95ec6ce390605186a7732439, 'anyLEDU', 8)
    , (0xf4f8b87da4244da566c4b5dcce7f8933505c1871, 'anyIDIA', 18)
    , (0xfa8d9952e4d2218f434909163527376ce9893640, 'CCSWAP', 18)
    , (0x323ba4181ed3d7a7e267330c27c176a006f91313, 'anyBELUGA', 18)
    , (0xe3f1d843dde0748fa370879536cb6877a7ff9db3, 'anyFEVR', 18)
    , (0xdae0e692805350d738202e0a7d8136da3e9078d9, 'anyAUTO', 18)
    , (0x0f07ffd690dffd9a0ce8274116830cf62d086b5f, 'ATTR', 18)
    , (0x2fb886aaf51764ae175f80e49cd10e90d446e8a9, 'anyRABBIT', 18)
    , (0x496e80cad8712025dafc5b2c96fc36c395af684a, 'BSGG', 18)
    , (0x5c9565950d2124d6e8387e2b3e9e0cd17fd8f6bd, 'MSU', 18)
    , (0x62334d3c6f48891deed7324abd0a3dcb23305f77, 'SPDR', 18)
    , (0xb361989412516d3414f100089cb89905ee7c896b, 'DAX', 18)
    , (0xbfdcce6ab5533a8b285a86116c957808e118c3b6, 'MYM', 18)
    , (0xd31228d81b2b295e18ea1ad4cd4e25da0afe1e4c, 'anybwJUP', 18)
    , (0x035bc8972f117162cbd6a38d21874393cba02f66, 'Illuminati', 18)
    , (0xb85159dffdc3fecb75529c92d8569575f9f74d9d, 'GGA1USD', 18)
    , (0x6a2bba610ee48305a4eb062e7c5dc3981ddf33d3, 'Qunon', 18)
    , (0xc6c48020e0320f65cbdcfb6ed0a2afd9b209abc4, 'TT2K', 18)
    , (0x55669f1c00d55f55ba1e736a23cee54877d922be, 'mooNfty', 18)
    , (0x01b279a06f5f26bd3f469a3e730097184973fc8a, 'dexIRA-BNB', 18)
    , (0x158335c10d3eee1c5db5a302ab972022f3e59040, 'anyLTY', 18)
    , (0x619f98fcf9a3f5fecee753fa9f4e3ce39ef43caa, 'anyFomoETH', 9)
    , (0xab7efd5333f5a636488cda6f8c1b5a128977ab93, 'anyBUSD', 18)
    , (0xcf3ddd04360811187bdc158dcc622d817384fe9f, 'anyONI', 18)
    , (0x0baf6f41514812880212b2e2bb59fe3ca147d6a2, 'CREAM', 18)
    , (0x2cbff5a1b0c34791fb96d89467798b4e6f755e34, 'anybMVL', 18)
    , (0x7b2223aa112c08356b10e4675ce32724a10fac51, 'ARMOR', 18)
    , (0xef1d7562a49ac98ba22f5cbeae28ce1ba0238578, 'ZHT', 18)
    , (0xf5c8054efc6acd25f31a17963462b90e82fdecad, 'MDA', 18)
    , (0xc647b6fdcfd167c73420731b769e4e057dc9b689, 'Metalist', 18)
    , (0xec3d92dcd5216e2f42290ff7e05a7ffe95ed8f43, 'max', 18)
    , (0xc812402a36a4e4d6331afa89bf92a89f8b6bd9c7, 'moonTicketCakeV3', 18)
    , (0x9f2023116b8562d352e1e01d8f06e31f07b01905, 'DsgLP', 18)
    , (0x05220a11566a954d449dcb72d241277668b8cf9e, 'wDEX-SHARE', 18)
    , (0xe22b9152914986e4020a00ab6ef510085c26c208, 'KONO', 18)
    , (0x6043c1600cf0a9c66fc0626b36b4e1e4d59098ba, 'anyANN', 18)
    , (0x3da9769665849bd67139cf67735445deea16340d, 'anySCLP', 18)
    , (0xf8df83a3f910a2d02e839715cad26fd5ce59b4b6, 'anyLIBRE', 18)
    , (0x1ad411be31cba244d0ff981a8c50cdd92002afd9, 'anyjEUR', 18)
    , (0xd451051d7d9f0b154ed25211094ec74036f49923, 'wMEMO', 18)
    , (0xe2476ec3a5954e717a1ed3b35296011af07da71a, 'anyGULL', 18)
    , (0xab6290bbd5c2d26881e8a7a10bc98552b9082e7f, 'anyUSDC', 18)
    , (0x54511c749f5af298fc7e5ffc9779280f104028e3, 'anyGEM', 18)
    , (0x2cf51e73c3516f3d86e9c0b4de0971dbf0766fd4, 'ABYSS', 18)
    , (0x92299822a8be65c9390c905941ea34b9c530f247, 'STF', 18)
    , (0xb614ad939e9477d5103baa32164db901214e2625, 'TFT', 8)
    , (0x39e5c480bc28b77d8b5960abc248a21c0cf4be30, 'mooEmpESHARE-BNB', 18)
    , (0xc26f6be1e5d4338b8e901e395949faaad33f5133, 'epc', 18)
    , (0x355430ce80a82fa1aa593ee71cef7f60024996ee, 'unic', 18)
    , (0x4c3ccaabd34c58000a738a5c6d735d959b3265a1, 'HCdoge', 18)
    , (0x58992eb2743e738073c62f52b13b6919880baa43, 'VCOIN', 18)
    , (0x1203355742e76875154c0d13eb81dcd7711dc7d9, 'USDX', 6)
    , (0xb2c7a198be3345d554043f6b875e254cb2034219, 'anyURUS', 18)
    , (0x81c15d3e956e55e77e1f3f257f0a65bd2725fc55, 'crADA', 8)
    , (0x47f46484a8d7573e07513b6e6b2bdc4f748ba294, 'XDEX', 18)
    , (0x067ede5097574b387ff30999e3a1775f3d7d569d, 'DOPE', 18)
    , (0x2ba9288c577c04cd1a5770810a9d4dcbb5ecb464, 'anyCHE', 18)
    , (0x14834532cd1aaaca7d271a4d419dcbda0b64f630, 'anyANKR', 18)
    , (0xed77bc3dad55f320f8807586c2aef9285c1a5ed2, 'anyGEM', 18)
    , (0x01c3d9cbcf40482ba0d5206f63e3f04ef9e134d9, 'SFI', 18)
    , (0x1f3406687cc885f18c310e44496c11b2500087b9, 'LBT', 18)
    , (0x37c24675e4a0dfce683c51e1746599f1e2517eb5, 'anyxBlade', 18)
    , (0x72ee88374d8087eeb069510a79c7220d90dc4779, 'ENK', 18)
    , (0x84c882a4d8eb448ce086ea19418ca0f32f106117, 'BFC', 18)
    , (0xa802e06cf47a4bc6a8c99f525be1400d6cc29301, 'anySGEM', 18)
    , (0xb4da0d36c3d96d06e119264d97b58659f3a59e53, '50F', 18)
    , (0x865a619f245f4f034a981c3541f021c8a865c267, 'TW', 18)
    , (0xe8772843261358c51d31e5f466f19ca267774cbe, 'LightingDoge', 18)
    , (0x73e4e7dd57eba408b6202e5e78a713f6e29303e0, 'lr', 18)
    , (0x264e2fccc042b1c30faad9e41ae7e352416426c1, 'GGA1BNB', 18)
    , (0x185d92bf4b0c4068e6b955c0f15a8081392119a8, 'MOKSA', 18)
    , (0x07dfaf24b205460984182b663834527935e74b8b, 'PX5', 18)
    , (0x5c0a9a723b1ac370cce3f382660f14726291e140, 'BLP', 18)
    , (0xd244fd01ca42415b5b3f9dce164c762eb28d6ea4, 'mooApeCEEK-BNB', 18)
    , (0x618fdbd703d917ecf2c49e93bb1af191d0b2c533, 'AWB', 14)
    , (0x0aa473bdf86233b7f9224ffaead25b1ed182279c, 'anyNTX', 6)
    , (0x9adbbc5410a30f3d71473efe7ed5e27cb6c02e1c, 'anyCTZN', 18)
    , (0x994cd2bfdeba7663fb561948ae85882ab9e4f20c, 'anybCFX', 18)
    , (0xe1168753035cfb5bf8841bef92355c583e5b704b, 'anyKEYFI', 18)
    , (0x32df1bc949d51bec5ff63cfd1d1fd9a11751c8b0, 'anyBETA', 18)
    , (0xb097e83211d896650ed0104da3309d3654416bc0, 'anyPINK', 18)
    , (0x1024fb39d9938d3b028e940b95c84a326cd57a58, 'anyPX', 18)
    , (0x16a6612eda615c63b946dd75aebed7d4b7252b3c, 'anyNAS', 18)
    , (0x26414054e097156c58b0294a9189a34c06bb0ecb, 'anySMCW', 18)
    , (0x3516141b1ac8751c2042a8a1bc411ab8655464ac, 'OCEAN', 18)
    , (0x405d64a2790ca1d37cda5e01983a68975c0c4ecf, 'PETS', 18)
    , (0x9f080368661261ee5d03bbd2b2f09d5489225e2c, 'STRIP', 18)
    , (0xb247a33e8201586a06f564b603759df7990e744d, 'anyHDO', 9)
    , (0xce1ab3678e56b4a03d14a66c7ee23c055fdaea16, 'anyGBOND', 18)
    , (0xe0286c89c626d11c7a1ea9f5ac2620e31cc80618, 'PREMIO', 18)
    , (0xe44108ca708a5016131f5fe82581e789cb4eaf96, 'anyORE', 18)
    , (0x1d5ddd30211ffaec5f05962e690b1fdb51aef9bb, 'PHST', 6)
    , (0xae60930454458f5d04cae41a9d127e786e90f40a, '500G', 18)
    , (0x42fdc09abc67d74e647635d8b209a0938db71bdd, 'CPH', 18)
    , (0x70d9b7457c713019f5b9c99bf73fd42084555630, 'anyMHUNT', 18)
    , (0x2ec59b2105be94d2d94bdd55c447810edd495d3d, 'any2022M', 18)
    , (0x5f0388ebc2b94fa8e123f404b79ccf5f40b29176, 'vBCH', 8)
    , (0x6da1dce036e5ca4318fbc7e7fc4234020ef8841e, 'anyMSU', 18)
    , (0x98d939325313ae0129c377b3eabdf39188b38760, 'anyMFTU', 18)
    , (0xe60988bfb3c4669fca76fc466d6cffafe11d2b6e, 'anyBitANT', 18)
    , (0x4fee8628787d450154b4efef48d8e495201aa0f3, 'anyWELT', 18)
    , (0x9a6d5c2e0376572f214a35f832740e412932d277, 'TOMOE', 18)
    , (0xb235163f7f567b97d33775bfde6811e43212c098, 'QKC', 18)
    , (0xbbc4a8d076f4b1888fec42581b6fc58d242cf2d5, 'anyXDEX', 18)
    , (0xf7b38053a4885c99279c4955cb843797e04455f8, 'WQT', 18)
    , (0x49f7756e51a4f2932fd2f75b064055c71cea1f37, 'BTFU', 18)
    , (0x2c30b4cb4b3001afa5b8c43c5a7ca548067562a0, 'oneDODO', 18)
    , (0x7c0408ca1cbf9c1a31d221d77e8569a9bed4cb44, 'TW', 18)
    , (0xb101950a20a080f852f5a995ab0f147bc0d69800, 'RILN', 18)
    , (0xd6cf54a0545675adb0aa5175b9461cd3d6a61f8e, 'mooApeBNB-STARS', 18)
    , (0xa1c33fe1cb63ed864dcc420e0d870f9044c53097, 'KOALA', 18)
    , (0xbe2449ffb270716e33acca219be9a2443e8c2ca8, 'FICE', 18)
    , (0x2ba4d72c82b289ea03b0a6ebce2de779a715122a, 'caogen', 18)
    , (0x1225691584fbf77e63006c91908aded10afc8258, 'TICT', 10)
    , (0x6f1bc0967945465539877b39ba48373b0219248f, 'anyDMOD', 18)
    , (0xfa6ddbae80dfbf91512fbbedd8a06bb9b25d6988, 'anyKING', 18)
    , (0x6362c3ac9713008b79deb0ee361f1f6f57037694, 'anyPKN', 18)
    , (0x7f102dbb31b41e359a05b2291bb71d8efcdaeacd, 'anyTLOS', 18)
    , (0x3ca1f50e8178a8a21cc919e617f8fad98a048ce9, 'anyZEE', 18)
    , (0x231f197d0e3e912deccd93c076ad92bddde70d61, 'anynuBTC', 9)
    , (0x0aaef3db5d2847b231468658001c278ee892b7e8, 'BAB', 18)
    , (0x0fc22a684ee0f37efa8f7dd12f48f62c17ee0c92, 'MIL', 8)
    , (0x323a07f929f7c4db7631866af151248ae3912d98, 'LIX', 18)
    , (0x6f9c26fa731c7ea4139fa669962cf8f1ce6c8b0b, 'SHIBA', 9)
    , (0x8c4daef64d4246d0274fe68243fd32bb8d5707e5, 'SAVG', 18)
    , (0xa58663faef461761e44066ea26c1fcddf2927b80, 'PDOGE', 9)
    , (0xad260f380c9a30b1d60e4548a75010ede630b665, 'BIFI', 18)
    , (0x0f22d8881fad53d99a2c1397827ec71e4b85f38e, 'EURX', 18)
    , (0xb2a1128324f3e8bcf513383c6443490031091750, 'FBL', 18)
    , (0xcd17173446f57e980e3892ece9af74b51e6140d1, 'EPSWIFI', 9)
    , (0x6e6c1984dfa2091fd2eaf4e9cd603c82a04fdbae, 'SWT', 8)
    , (0x0af4512b91f773d3a3918e5587694562174a781f, 'BZZ', 18)
    , (0x9ca7951629bc8a73c0dd601ae98ac72916be3001, 'LUSD', 18)
    , (0xe993ec84ba9e3145a1833b893638e42ab415838f, 'GOLD', 18)
    , (0x05134427ca04fe0712b29fb50c4d573f63e5cb22, 'vBABY', 18)
    , (0x223f6a3b8d087741bf99a2531dc53cd15745eba7, 'CWETHLP', 18)
    , (0xd41ed5867f6b82ca64d8cb3eeba9315891c0b7c9, 'anySDAO', 18)
    , (0xdebb1d6a2196f2335ad51fbde7ca587205889360, 'anyETH', 18)
    , (0xd3a33b8222ba7b25a0ea2a6ddcda237c154046af, 'anyFTM', 18)
    , (0xd7008fe6577a8c4c4c995359e157480e36b8c710, 'anyNBT', 18)
    , (0x10b6edf7b2da48f6cd37e01be18d3c19120a46f2, 'NXT', 18)
    , (0x554ce7e138581ee3408885e38213d169e7dd2017, 'TRIX', 18)
    , (0x56f3878c54ad3cec18a380e788c5135bf617f5d6, 'INCH', 9)
    , (0x6e948add7eb958c81b79191c05bd4d4213bf61c0, 'CRF', 18)
    , (0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40, 'JUST', 10)
    , (0x7d3dc11f8aa754a9054c398f75d5e0dd81d2727e, 'YF-DAI', 18)
    , (0xa688223dffd18097edd29e1ace08e6b6940b96d6, 'COC', 8)
    , (0x1325bb0df582b0beb871e25712e51c29f8e8046e, 'MLP', 18)
    , (0x6b6e2557eb204ce7b0ecf272ae395c69591caa21, 'NUSD', 18)
    , (0xd3debe4a971e4492d0d61ab145468a5b2c23301b, 'ACS4UST', 18)
    , (0x186265b793b63ae7612627b2c07f0bf54c32cfef, 'RHG', 18)
    , (0x2cf008c66a74ea2e0129fb29aa9e03f17bc06ea9, 'SMXN', 18)
    , (0x2d39551b6c0a49eabf1490eb700f73fd5e9ffcbc, 'TIMB', 18)
    , (0xbb52a84b935de190b5ece83af45b6c2f52c83c40, 'STORM', 18)
    , (0xe77b2e0347cc910d7ad9dc1a8f97108c825cf81f, 'anyGCAKE', 18)
    , (0x8c4e06c8d4297448e768f91947e0643b31db08d3, 'anySMBR', 9)
    , (0x6e283470cb5f0c7315c6e165eec4cc39965e5ceb, 'anyXIDO', 18)
    , (0x5fe5a66c84c6f8c213503a04f95a417ac6684361, 'EURS', 2)
    , (0x068d05bf6a1d907456b7769458902892329b02b6, 'anySWAP', 18)
    , (0x84a5d1d7b78810512357c1ebd252447acc91d77e, 'anyALICE', 6)
    , (0x0802d66f029c46e042b74d543fc43b6705ccb4ba, 'ABBLOCK', 8)
    , (0x6cee1e8763589d77746e7a0ec84f9815402facd7, 'anySELECT', 18)
    , (0x8497842420cfdbc97896c2353d75d89fc8d5be5d, 'STND', 18)
    , (0xab7a6fe97866aa1e5865f26b0d034a03128b7d80, 'CRS', 18)
    , (0xeff6fcfbc2383857dd66ddf57efffc00d58b7d9d, 'LIMIT', 18)
    , (0xfe4c11f7db2dde18f2952c52f37abbeb120ab728, 'anyWCHI', 8)
    , (0x4bce181c72742445d163a0a498dd0155f5b4ac27, 'LIBERTAD', 18)
    , (0xac0c517c65ca8946ee9184a1d3f683e68b097a69, 'GME', 18)
    , (0x1d43b6e8130e7a359f5b26347100269699ddc466, 'ACC', 18)
    , (0xd582b3fe197d76146d1a7fa76f2db10c20f9d2ae, 'Euphoria', 18)
    , (0xae71e1f1060f16cf9001f580bd6b9ea4fb86a015, 'ITG', 18)
    , (0x6dfc38db4c92a1cbd9e4196f6c7741178b0fc2cd, 'mooApeBUSD-BNB', 18)
    , (0x460ecc72746944ad4f1f57ed18933911e8e37af2, 'TWT', 18)
    , (0xf38149be80ab837109f7b4d875e830d03205e0f0, 'BTC21', 18)
    , (0x3440552fbcb1a3102ab6550166e2febf090cc436, 'DLP', 18)
    , (0x0aee8703d34dd9ae107386d3eff22ae75dd616d1, 'SLICE', 18)
    , (0xae555cd91c93b1ac8940b8e2e845000c8781c468, 'anyBISON', 18)
    , (0xae27785b2c91c91c072ba4484d759e0c92d6fae7, 'anyBNB', 18)
    , (0x10b620a6e3182850c005f0bcbd9a56e9121d8c62, 'anyBTCB', 18)
    , (0x2e6db117182be2d2bb880a610d4abfe4ca4cc544, 'anySHI', 18)
    , (0xbd87fa704d5ab65e9a189d6e0dbaade51643adf0, 'anyBTD', 18)
    , (0x1351ab0323b1127e1cfb8406adf87ca88a5a4ff6, 'MIX', 18)
    , (0x2c591c8078ea432b7affb04957c89fedc5e854b5, 'CCC', 18)
    , (0x5a68f06ef5e3f3b65ac466e74f4c61c3ab4d171b, 'AGF', 18)
    , (0xa8f47fdb7ef480abe45747092f79cfeb7cf2c2f3, 'DVD', 18)
    , (0xbfc044a234e45412ecfec2cd6aae2dd0c083a7cd, 'SIG', 18)
    , (0xdef06a9048a753efc1d614519632a2e031ce2ce7, 'anyZO', 18)
    , (0xb49a312677ba1e80dde23c17e46e80b3e86b533d, 'ILN', 18)
    , (0x3bf776addeff1ca9b17a5d5810ed0ecd37ee9c9f, 'TYTW', 18)
    , (0x1f278abf7f050a735ab0942e60d8d6d36feab0f6, 'Benz', 18)
    , (0x36710e0e96e7edc9d3b7199701671645232eb769, 'DogekMain', 18)
    , (0xaddbadd593951745a208a843d48599e3dc93be75, 'MoonPlan', 18)
    , (0x4c2bddc208b58534eddc1fba7b2828cab70797b5, 'gUSDT', 8)
    , (0xda821b927f06f65bd908d119656c0e42b4dfcb91, 'BTC', 18)
    , (0x281615d24793e91976e5155aed88c91a6a7f6d1a, 'ECHAIN', 18)
    , (0x1ab7de6ac4ef91ea4f10fabe444b9a2e727ec89b, 'anyBIFI', 18)
    , (0xc40ef4f38a3235f21987f9f13431983cd3025e58, 'anyUSV', 9)
    , (0x92fe6753ba36ba74200f3f2c9a3b5a58ec02d049, 'anyGEMG', 18)
    , (0x49369aeee769bd6043726b0cd5f0bd53d843bc32, 'anyGEO', 18)
    , (0xc20ff003662d9b91b4139ffa6b7c9d69968bad2c, 'anySIG', 18)
    , (0x2630c7d2104b92721357b3735412ce647a28ed8a, 'anyWRAITH', 9)
    , (0x845ab325e3e4ec379c68047313d66bbd631e59a9, 'anyCLV', 18)
    , (0xeac7ec051a0854cfc2bb543c96fad879de545b90, 'anyCYT', 18)
    , (0x5329b989b69f3c46b5e6868619ee390757b7c5bb, 'anyRSD', 18)
    , (0x9b3a299a3db37c662ab9d39cbfedacb81c0e09e3, 'anyMVC', 18)
    , (0x0cf21cac0b5689aa39b38032ae228cec9e2d0192, 'ADB', 18)
    , (0x0ffccbff59bffa90bc27e41a362839947bb11f80, 'ANGLE', 18)
    , (0x2c78f1b70ccf63cdee49f9233e9faa99d43aa07e, 'SHEESHA', 18)
    , (0x2ede13880e11b19b7d6113a86ac7ac84ac651042, 'anyCOMP', 18)
    , (0x58a746553fff813f4301bc5605aaafc487b5328b, 'RAZOR', 18)
    , (0x5e54301415546401626036a10f85f9f06de8dffd, 'SPORT', 18)
    , (0x6ff0609046a38d76bd40c5863b4d1a2dce687f73, 'MUSIC', 18)
    , (0x75e0eb8e6d92ab832bb11e46c041d06a89ac5f0d, 'PBI', 18)
    , (0x9611579c926294b0e29e5371a81a3e463650be17, 'BCP', 18)
    , (0xcd61b749188ef07624dba8c8773aa66fc8634690, 'MRPHS', 2)
    , (0xb56979cd28c5b9aa94a3798b4e0198f872864238, 'BIUSD', 18)
    , (0xd14dd55df5c7f08b3318723faf5d5d1fe1a24aeb, 'REBEL', 18)
    , (0xd43a4e7facbc32974b932872fcab18851a084664, 'RVT', 18)
    , (0xcfb66375e9f1c749d108093782cba8e2cde7f590, 'ATK', 18)
    , (0xb12c13e66ade1f72f71834f2fc5082db8c091358, 'DAI', 18)
    , (0xdc37fa1507c7697c0778d3a7d61b31dce7cbba70, 'NIOX', 4)
    , (0xc232e3741660f097515fc46c3d65a9f56adda6fb, 'anyCOR', 18)
    , (0x0dbc3e02d8ef0c4c1f7e429c5a3a9aaeedf18a75, 'anyDAF', 6)
    , (0xf3abe72301d931edca7b4787b653ef9e035fff53, 'anyCIFI', 18)
    , (0x9c8a7a2b154e3999c7c3774b662dcdd6580b3722, 'anyGAMI', 18)
    , (0x021750e46a47b2a02f4f860c93dcc774b1aba1d5, 'CHART', 18)
    , (0x1a056a5fcbbe5ad69793cea8569c6dba33e4080a, 'CRD', 18)
    , (0x1cdee2f21c066848a8a135e19f5f302ca29f1f69, 'LEVL', 18)
    , (0xaff9d0da646a4f11998980dd80a5728a1ecae726, 'GUARD', 18)
    , (0x58ee91eb8a0d09f4438422b5c7bb788fcfb7c126, 'MLTC', 18)
    , (0xb26642b6690e4c4c9a6dad6115ac149c700c7dfe, 'mooCakeV2CAKE-BNB', 18)
    , (0x505f805cbedaa5bf338ed5423d84c869fc685b78, 'SPE', 18)
    , (0xc77d3b6103926618381ab4a54d856ef9900f4788, 'MABITE', 18)
    , (0x4836dbc94d5a47d8207e97024ba4b5d322b8942d, 'DsgLP', 18)
    , (0xd03c08d7544bdc3de745b51ec0da33f6aba6b073, 'EGG', 18)
    , (0x8501f24c2a10fa9e16517f4fcfbd3278e1d8cf98, 'HTB', 18)
    , (0xf2064c230b285aa6cf45c6267da86a8e3505d0aa, 'mooBeltETH', 18)
    , (0x6c01361d8dbaf43b81b52da3efae7dab1b8fffe9, 'anyYOSHI', 18)
    , (0x9d709ca51507730dfb8379a38c15f7f3d5a3710e, 'anyTEN', 18)
    , (0x650b940a1033b8a1b1873f78730fcfc73ec11f1f, 'vLINK', 8)
    , (0x1fd377178511e9c74e055aa3789cfb64fc7ca07b, 'any5TABLE', 18)
    , (0x51138ef0dc9de2a03aaafa95f69924302b49a5fb, 'anyEVX', 18)
    , (0xf2e28bb41ad0172217d0d219d9beda478467b9ca, 'anyDSG', 18)
    , (0x2ffb752b867415b57f8bc07ce4f70cac26b7300d, 'anyCOWS', 18)
    , (0x1ad9fb7a447e8bad3a9cf387046335f29ad414eb, 'any$DEWO', 18)
    , (0x332730a4f6e03d9c55829435f10360e13cfa41ff, 'VSP', 18)
    , (0x7c96ed505d77f82b1229220d96ee9feeea7c1fe7, 'MITX', 18)
    , (0xadc29741a2bd5c32b66d14cec42b91b221bdfce7, 'MBZ', 8)
    , (0xf48fbc59e6b45cff26a7608ff7d5a22ebc40df7f, 'UNN', 18)
    , (0xfa36810552aaf762942bdddb958a5bca2acc8476, 'anySGEM', 18)
    , (0xfa850eca95c34aa7dcd4213868ead3ec8927416f, 'DRGN', 18)
    , (0xf92aa7543e38684afec679ceffae02675dccbdfc, '500DC', 18)
    , (0x21e20b2257e6e82a57f894afa78d1c43cd57684a, 'AGKIL', 18)
    , (0x79f3bb5534b8f060b37b3e5dea032a39412f6b10, 'USDEX-USDC', 18)
    , (0x56501b0b12ee9518c2991451bbc8d7f9267949d2, 'anybKANGAL', 18)
    , (0xe6de9f70d5a4ec9da52ce35f449794eba826de72, 'anyRACA', 18)
    , (0xfb4ac62d4c6ad358ce679e61281f5eb5a20dd063, 'anyTM', 18)
    , (0x989a6de580b9e918017f02fe7180e6f94805d2ab, 'anyPLOT', 18)
    , (0x0c5f149362ca17eac5d18e6912ab4f5aeabf88e6, 'KUMA', 18)
    , (0x1e06229b037ec6bfeb48fc4d3b473e6c91bb99b7, 'anyMOR', 18)
    , (0x250c30a63374a613ed14a0e4d7bd7d14abab8fbf, 'anyXCUR', 8)
    , (0x264c1383ea520f73dd837f915ef3a732e204a493, 'ZCX', 18)
    , (0x2a0da514b2281b12a9b93ff1b5ed738a91e0da22, 'SNO TOKEN', 18)
    , (0x812764fa37a4fd731a5d39f0e519b6b8d61e82a0, 'DAO', 18)
    , (0xcc1f1cbf22293cd906f9e7c4419fbbcde9bd8148, 'anyHER', 9)
    , (0x76adcf31e93f55422b06e18b0b41a58262fbf32c, 'CERE', 18)
    , (0xc7169e453463b8ed7f45b151f5d297860b7a39cd, 'MFT', 18)
    , (0xcc3d722e518ff86b113fa6aa4434fbaa0449a0e1, 'mooCakeV2QI-BNB', 18)
    , (0xb13a3057238a4fd9bb1bc83fd0a3c5ae00d7a1b8, 'EYEC', 18)
    , (0x554f177526252cfce18f89f2da55f3c482d436f6, 'KFC', 18)
    , (0xee9099c1318cf960651b3196747640eb84b8806b, 'iUNI', 18)
    , (0xc412ecccaa35621cfcbada4ce203e3ef78c4114a, 'anyMAI', 18)
    , (0xe408849d21646a42fd5e36cc520b26e7cdd62370, 'anySNP', 18)
    , (0x1610bc33319e9398de5f57b33a5b184c806ad217, 'vDOT', 8)
    , (0xf0c918b2a27746afc863d32a9a07b5cad3a0ef42, 'GBOND', 18)
    , (0x94977c9888f3d2fafae290d33fab4a5a598ad764, 'anyHYVE', 18)
    , (0xcf0e74d4256d3ea96dd294ff194a1915595e74d6, 'anyKALM', 18)
    , (0xb027c02aff109a545e4ce4fdc08b9597030c4ef6, 'anySKILL', 18)
    , (0x91648237a47585242f1f8ad10e84dd03fa95ec4e, 'anyRYOSHI', 9)
    , (0x3ac92ff3c5bf439a87b26741ac6db1793ba1b025, 'anyAVAX', 18)
    , (0x5ae9604fea71d4916ecedb3af1df8c4903a064b7, 'FACE', 18)
    , (0x09a15e2ecc0306046826d95696c183d533c228df, 'BXR', 18)
    , (0x461d52769884ca6235b685ef2040f47d30c94eb5, 'STN', 18)
    , (0x72449ed79841981b19d4552861007a63da3963fe, 'ETHIX', 18)
    , (0xc36d14c0be40dc9ab88760d2112cc5a69ff8b3c7, 'any$FORWARD', 18)
    , (0x22fa03cad57a4853272d39e4f063be444a085fa5, 'kBUSD', 18)
    , (0xfb26fad00924768ebad2d994c0a59bb19c094344, 'TestFILN', 18)
    , (0xaec1ccc581bf761a2ce3742c07a8807e11c4ae2e, '9c', 18)
    , (0x93d3397d08676246425ff016c8180322e334c2b2, 'KLP', 18)
    , (0xa6ba6b1721a3a0998758a0b97381d418dd56fe2e, 'Seird', 6)
    , (0x1441e091e1247e6e6990ccb2c27169204fb04aa9, 'anyXMETA', 18)
    , (0xc90c592677a58e3af3af0e36635be22b76d92d45, 'anyPAWTH', 9)
    , (0xedf0c420bc3b92b961c6ec411cc810ca81f5f21a, 'anyUSDT', 18)
    , (0x8c1d1ae5d02629e6b8bf4da1b8ced34346cb8a9f, 'anyTFBX', 18)
    , (0xd6403c6318a87bc7dd5ba242e120f3ca878df98f, 'anyNT', 18)
    , (0xe409679a90aba847922682798757c8be8dc54c15, 'anyMCRT', 9)
    , (0xd95f99d6e5527eeb35eba9e024900ee7f8eaeafc, 'anyFEAR', 18)
    , (0x38c84d5bbad726d465cf6a5349e41d6d7095faf7, 'agEUR', 18)
    , (0xa8ea8d1d7a3e689ccc90dcecb437ab0674d5ec6f, 'SHINJA', 9)
    , (0x765277eebeca2e31912c9946eae1021199b39c61, 'AMP', 18)
    , (0x7c598c96d02398d89fbcb9d41eab3df0c16f227d, 'ATRI', 0)
    , (0x7efabc2c92b20e0987af979ae9f87d508c5da1c9, 'WSSPA', 18)
    , (0x8b3cc638431b34014fa3de174a25b18b364a7cc5, 'WINE', 18)
    , (0x99ba071bbf4593c239d5633106d15696810840e7, 'anyiBFR', 18)
    , (0xf3f64ad6af423be76a06908141217cfeb6f718c6, 'anyBCP', 8)
    , (0x04ffb93127d8af3144feb3412ad6c646214c6744, 'ibRABBIT', 18)
    , (0xeb29f65c4daeea6462a2f280e3bf418ec8b3da9b, 'GREEN', 18)
    , (0x3d2e9d762413cec5bf862fdb0085315dd2c4c09e, 'anyUFARM', 18)
    , (0xe529797535426a042a79aa555334f444565d118e, 'anyUNCX', 18)
    , (0x385ff2b2fc61164604c5bdc708ccff611fe9c42d, 'anyMNFT', 18)
    , (0x0d66f9aa410ca289105355b4940e7551fdce2c14, 'UCG', 0)
    , (0x11eb3aa66fe1f2b75cb353d3e874e96968182bda, 'GAJ', 18)
    , (0x249463c47e10f81228f90c79d2e01608b0e91155, 'STR', 18)
    , (0x4615e03cb458e08ed3a7996b2e0f61e6f59864bc, 'anyDoKEN', 18)
    , (0x56fb3fd352e5875c6f2771ca86f3fd361cc0d93e, 'BITX', 18)
    , (0x6ab6d61428fde76768d7b45d8bfeec19c6ef91a8, 'DUCK', 18)
    , (0x7dd300a2d3f881f44b33c96fb751746e9a0175a8, 'GDAO', 18)
    , (0x85d4c747da02ec4fc8d6b8da6f2a59ea91f7a460, 'anyMIT', 18)
    , (0xa86bfc69c99d04552808b425a68a06430fb9bddf, 'WSCRT', 6)
    , (0xf9a7bbfdc269dc9d338b97670d3e8b6ec8747618, 'RLC', 9)
    , (0x596a0c5b825b7afb4f15d3dd207ccf1f185ca359, 'vYIN', 18)
    , (0xa844089d06d219f077364ae53bc38a9d44162ef0, 'KKF', 10)
    , (0xadd0e882496548cbe168bee1c3b2c845c396accb, 'INR', 18)
    , (0xf186aed6465ecdf961ef9d662898ea6061a06c3f, 'RILNF', 18)
    , (0x0ed8d6006bbc9f357733390f3cd09084daa34040, 'TestGold', 18)
    , (0x5fd578e295f3034f7df822fac044d5643b6d1a76, 'DLP', 18)
    , (0x87087f856d0c2872b471b7d1306db43349f01fd1, 'BYC', 5)
    , (0x3a218d024f452caac91fcfa39ba524e0bdfe9ec0, 'anyROAR', 18)
    , (0x6aeec4b23aa51442e613e5023dafa5c9de2dfe95, 'anyBSPT', 18)
    , (0xf35870b6fd9a77d47364d357dd0b16a5e5c956da, 'anyKONO', 18)
    , (0x1a8d54beed300e99e41dfc806d522eba5aefa034, 'anySATA', 18)
    , (0x5022a3772357a2bba192a4d93a918446492baa94, 'anyWOO', 18)
    , (0x3c48d39479c4e34657aa141543c56bf340967de8, 'anyQI', 18)
    , (0x5650c49d662cb83666ab0fad224453b603179d2a, 'anyKNC', 18)
    , (0xd8485513dd9947aa3287d90fd3804d3df52d0da1, 'anyATMSSFT', 18)
    , (0xd8dbc29c651e0571d8c1e1b5f9c1d68d5fa4d752, 'anyCK', 0)
    , (0x1c019af5b059f4473289c1ddeea02cc4993478ea, 'KSF', 18)
    , (0x2f2c7cc8a6d0a0f3e1edbd4ae571f9e40d09f4d6, 'PEOPLE', 18)
    , (0x89c90e480a39fbe3886bb5bd53ba5b1acc69d4fb, 'IM', 18)
    , (0x921f99719eb6c01b4b8f0ba7973a7c24891e740a, 'RSD', 18)
    , (0xa83ebae74ac8f256dd3fdfea409b98eb44c7c52b, 'anyvUNIT', 18)
    , (0xa8752333f6a6fe47323a4edac3d09bb1048a0e23, 'anyC98', 18)
    , (0xe2f28d24a2c6a69de859dfdefe347c9b25ad6aa2, 'TOTEM', 18)
    , (0xec82f8d35ffe8da987b97c0bf12921ec57f23d3c, 'RTKN', 18)
    , (0x98cadfb805fac92ef70e3ed900c76a487cdb26a1, 'mooCZFCZF-BNB', 18)
    , (0x055dbb573477397c93902546ffb56a896794eee5, 'SDRM', 18)
    , (0x26e5e3cb7708db0352d83fd16226ec01b65a15b4, 'Pi', 18)
    , (0xae738b5c4d3808f150ee2cc4933c86c4a7ccd54a, 'MiA', 18)
    , (0x4ff26a4111adc0afd33fb41fd6dececc5452ddd4, 'SOLIR', 18)
    , (0x1de10dd0267d9cf5f4e4a494d5f50dcf98bfcf51, 'TestSILN', 18)
    , (0x69476255a2703df58c0f6bb60d1c5dec9a8406c1, 'mooApeNFTY-BNB', 18)
    , (0xc45a2aa83b87e890cfe83563eed67cc2ce602442, 'WF', 18)
    , (0x7559855de6ee334fd863739322ccbb2ea7bfd13f, 'LQTY', 18)
    , (0xee86de1e1e76870184ada276bb4d70b696601a1f, 'FUND', 18)
    , (0xe8213db89f1e14fedbc611c30cac7dfdafcd853a, 'wsNMS', 18)
    , (0xd6e6513f1c449fbaf3b527456a3f7ecc729b63cd, 'any8PAY', 18)
    , (0x4b106b91c5fe4ae933cda197b9caf91a07bdae15, 'anyLIQ', 18)
    , (0xa2b0217943f826ba3ce0753316e0d78fc50fd581, 'anyPOLAR', 18)
    , (0x0230219b25395f14b84cf4dcd987e2daf5a71e4b, 'anyETH', 18)
    , (0x378dacb12e3dccca598c37325a2b32c2dc3a4ae4, 'anyWarden', 18)
    , (0x1f38620f555a4725c2e27d34a175e4f97a32b3ac, 'anyHARL', 18)
    , (0x277be44551a8c4d4004e2091ff7d3f69be21782f, 'RAMP', 18)
    , (0x3878110877052425282a7d4a712b1d8a45ad04cb, 'MEGASHIB', 9)
    , (0x753fbc5800a8c8e3fb6dc6415810d627a387dfc9, 'BADGER', 18)
    , (0x84ae7b0ff2bc523969fb3162e04149a419196f4b, 'HYN', 18)
    , (0xf1cd2b6fc3876619786e9733eeed15518f127aa3, 'MSHIBA', 18)
    , (0xf207dbe40068c4f071e731ad1720f1c763fb42d1, 'anyMNTO', 18)
    , (0xf4a71809fd0d5715a9685caadb6f0d8beafdf8af, 'PFI', 18)
    , (0xfe77d71baf7a6cdabbd63a2ad1e0adb68ca64c06, 'POWER', 18)
    , (0x1066b944f6e0e8a97a81e030aea72bba360c9439, 'INVESTBOND', 18)
    , (0x9f2bbf8aae5a9bc2b797da6c1d8b13497356e4ad, 'DIVINE', 18)
    , (0x188738e1177a994fd3f1a1daa07c14e148ef03d0, 'CHOPIN', 18)
    , (0x1cebf8735c8d1365cb4c2117787dc811ea6148e0, 'DUSD', 18)
    , (0xefc41e176a20ae15c7c20da48d40d83d098845d8, 'SPRT', 18)
    , (0xd691d9a68C887BDF34DA8c36f63487333ACfD103, 'MAV', 18)
    , (0x2b5d9adea07b590b638ffc165792b2c610eda649, 'CKP', 18)
    , (0x3b6564b5da73a41d3a66e6558a98fd0e9e1e77ad, 'UTS', 18)
    , (0x6985884c4392d348587b19cb9eaaf157f13271cd, 'ZRO', 18)
    , (0xfceb31a79f71ac9cbdcf853519c1b12d379edc46, 'LISTA', 18)
    , (0x0e7779e698052f8fe56c415c3818fcf89de9ac6d, 'ULTI', 18)
    , (0x617cab4aaae1f8dfb3ee138698330776a1e1b324, 'ARTY', 6)
    , (0x2940566eb50f15129238f4dc599adc4f742d7d8e, 'BCCoin', 18)
    , (0xc5d27f27f08d1fd1e3ebbaa50b3442e6c0d50439, 'APP', 18)
    , (0x7b56748a3ef9970a5bae99c58ad8bc67b26c525f, 'CHAPZ', 10)
    , (0x23b891e5c62e0955ae2bd185990103928ab817b3, 'nUSD', 18)
    , (0xbda011d7f8ec00f66c1923b049b94c67d148d8b2, 'AI', 18)
    , (0x4a8049c015ae1c6665fc9e49f053458ae3a102d0, 'BabyRWA', 9)
    , (0x75e8ddb518bb757b4282cd5b83bb70d4101d12fb, 'NFP', 18)
    , (0x51e72dd1f2628295cc2ef931cb64fdbdc3a0c599, 'KAS', 8)
    , (0xe6d19cfa419fc81029b11b335ba5c53a0aa6e37f, 'DEMON', 18)
    , (0xd404829f8634c99c7ac945b69a02a5b7a8d4de8c, 'MEMEAI', 18)
    , (0xeb880acb83c63ea3eab4baae9693dc5dd9d324a3, 'SCPT', 18)
    , (0xdb6c248902ad2722a5e01e9689824c28bd0a5f75, 'Baby-LP', 18)
    , (0xd1b6d02c03e632a845460c8167eb05d2d9e03a35, 'Sorai', 18)
    , (0x0f327343c7902233c0419724946b17fa664f2fe0, 'LBTC', 18)
    , (0xd4e17ad949bb0fd99a6e7a5f2dad73baf41d3210, 'WZM', 9)
    , (0xf0f14cbd7ce6753bc209eb0d8f67fc84cccb9b2f, 'MSS', 18)
    , (0xea2f49a2e6e27b7b47cbef50aff5af11350108d1, 'MAGA', 18)
    , (0x19ae49b9f38dd836317363839a5f6bfbfa7e319a, 'STC', 9)
    , (0x76b560b628f74bf192be09f0449abef8e456be79, 'BABYCATE', 9)
    , (0x6ec07dbd9311975b8002079d70c6f6d9e3e1ee5c, 'BabyTroll', 9)
    , (0xccdf812aa7cdee4ff7cb89546d7f1718bb8d46e1, 'TRUMP', 18)
    , (0x1bf0e31b0cf3accd304fa197788bc3be661dba09, 'TRUMPINU', 9)
    , (0x6cdd08de79231a1957f205a3fe5cf9dbf4b0c454, 'BabyNeiro', 9)
    , (0x258903a8e68d5248de85cf8a0a173d9e046edd98, 'BabyElon', 9)
    , (0xe66fd34c0f8726a5eb97f6d45c5a5df4d57d39fc, 'BabyTrump', 9)
    , (0x92072f045d0904e9a0cdfd48519f54c83bf41e82, 'MOCHI', 9)
    , (0x304B5845b9114182ECb4495Be4C91a273b74B509, 'ynBNB', 18)
    , (0x78839cE14a8213779128Ee4da6D75E1326606A56, 'ynBTCk', 18)
    , (0x32C830f5c34122C6afB8aE87ABA541B7900a2C5F, 'ynBNBx', 18)
) AS temp_table (contract_address, symbol, decimals)
