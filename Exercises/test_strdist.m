function tests = test_strdist

tests = functiontests( localfunctions() );

end

function setupOnce(testCase) %#ok<*DEFNU>
addpath('STRDIST_Test_Data');
testCase.TestData=load('words.mat');
end

function test_OneWord(testCase) 
verifyEqual(testCase,strdist(testCase.TestData.words{1}),0);
end

function test_ThreeWords(testCase) 
verifyEqual(testCase,strdist(testCase.TestData.words(1:3)),[7,5,7]);
end

function test_DimensionsOutput(testCase) 
verifyEqual(testCase,size(strdist(testCase.TestData.words(1:4))),[1,6]);
end

function teardownOnce(testCase)
rmpath('STRDIST_Test_Data');
end