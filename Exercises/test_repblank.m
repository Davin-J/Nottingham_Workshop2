function tests = test_repblank

tests = functiontests( localfunctions() );

end

function test_OneBlank(testCase) %#ok<*DEFNU>
sol=repblank('blaue Dame');
exp_sol='blaue_Dame';
verifyEqual(testCase,sol,exp_sol);
end

function test_ManyBlank(testCase)
sol=repblank('blaue   Dame');
exp_sol=('blaue_Dame');
verifyEqual(testCase,sol,exp_sol);
end

function test_FirstBlank(testCase)
sol=repblank('  blaue Dame');
exp_sol='blaue_Dame';
verifyEqual(testCase,sol,exp_sol);
end

function test_LastBlank(testCase)
sol=repblank('blaue Dame  ');
exp_sol='blaue_Dame';
verifyEqual(testCase,sol,exp_sol);
end

function test_AllBlank(testCase)
verifyError(testCase,@() repblank('   '),'repblank:AllBlankString');
end

