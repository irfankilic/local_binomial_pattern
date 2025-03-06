
clc
clear all
close all
load('ozellik_Histogram.mat')
trainingData=ozellik_Histogram;
mak=0;
iterasyonSayisi=100;
sonucMatrisi=zeros(iterasyonSayisi,11);
tic
for k=1:iterasyonSayisi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14', 'column_15', 'column_16', 'column_17', 'column_18', 'column_19', 'column_20', 'column_21', 'column_22', 'column_23', 'column_24', 'column_25', 'column_26', 'column_27', 'column_28', 'column_29', 'column_30', 'column_31', 'column_32', 'column_33', 'column_34', 'column_35', 'column_36', 'column_37', 'column_38', 'column_39', 'column_40', 'column_41', 'column_42', 'column_43', 'column_44', 'column_45', 'column_46', 'column_47', 'column_48', 'column_49', 'column_50', 'column_51', 'column_52', 'column_53', 'column_54', 'column_55', 'column_56', 'column_57', 'column_58', 'column_59', 'column_60', 'column_61', 'column_62', 'column_63', 'column_64', 'column_65', 'column_66', 'column_67', 'column_68', 'column_69', 'column_70', 'column_71', 'column_72', 'column_73', 'column_74', 'column_75', 'column_76', 'column_77', 'column_78', 'column_79', 'column_80', 'column_81', 'column_82', 'column_83', 'column_84', 'column_85', 'column_86', 'column_87', 'column_88', 'column_89', 'column_90', 'column_91', 'column_92', 'column_93', 'column_94', 'column_95', 'column_96', 'column_97', 'column_98', 'column_99', 'column_100', 'column_101', 'column_102', 'column_103', 'column_104', 'column_105', 'column_106', 'column_107', 'column_108', 'column_109', 'column_110', 'column_111', 'column_112', 'column_113', 'column_114', 'column_115', 'column_116', 'column_117', 'column_118', 'column_119', 'column_120', 'column_121', 'column_122', 'column_123', 'column_124', 'column_125', 'column_126', 'column_127', 'column_128', 'column_129', 'column_130', 'column_131', 'column_132', 'column_133', 'column_134', 'column_135', 'column_136', 'column_137', 'column_138', 'column_139', 'column_140', 'column_141', 'column_142', 'column_143', 'column_144', 'column_145', 'column_146', 'column_147', 'column_148', 'column_149', 'column_150', 'column_151', 'column_152', 'column_153', 'column_154', 'column_155', 'column_156', 'column_157', 'column_158', 'column_159', 'column_160', 'column_161', 'column_162', 'column_163', 'column_164', 'column_165', 'column_166', 'column_167', 'column_168', 'column_169', 'column_170', 'column_171', 'column_172', 'column_173', 'column_174', 'column_175', 'column_176', 'column_177', 'column_178', 'column_179', 'column_180', 'column_181', 'column_182', 'column_183', 'column_184', 'column_185', 'column_186', 'column_187', 'column_188', 'column_189', 'column_190', 'column_191', 'column_192', 'column_193', 'column_194', 'column_195', 'column_196', 'column_197', 'column_198', 'column_199', 'column_200', 'column_201', 'column_202', 'column_203', 'column_204', 'column_205', 'column_206', 'column_207', 'column_208', 'column_209', 'column_210', 'column_211', 'column_212', 'column_213', 'column_214', 'column_215', 'column_216', 'column_217', 'column_218', 'column_219', 'column_220', 'column_221', 'column_222', 'column_223', 'column_224', 'column_225', 'column_226', 'column_227', 'column_228', 'column_229', 'column_230', 'column_231', 'column_232', 'column_233', 'column_234', 'column_235', 'column_236', 'column_237', 'column_238', 'column_239', 'column_240', 'column_241', 'column_242', 'column_243', 'column_244', 'column_245', 'column_246', 'column_247', 'column_248', 'column_249', 'column_250', 'column_251', 'column_252', 'column_253', 'column_254', 'column_255', 'column_256', 'column_257'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14', 'column_15', 'column_16', 'column_17', 'column_18', 'column_19', 'column_20', 'column_21', 'column_22', 'column_23', 'column_24', 'column_25', 'column_26', 'column_27', 'column_28', 'column_29', 'column_30', 'column_31', 'column_32', 'column_33', 'column_34', 'column_35', 'column_36', 'column_37', 'column_38', 'column_39', 'column_40', 'column_41', 'column_42', 'column_43', 'column_44', 'column_45', 'column_46', 'column_47', 'column_48', 'column_49', 'column_50', 'column_51', 'column_52', 'column_53', 'column_54', 'column_55', 'column_56', 'column_57', 'column_58', 'column_59', 'column_60', 'column_61', 'column_62', 'column_63', 'column_64', 'column_65', 'column_66', 'column_67', 'column_68', 'column_69', 'column_70', 'column_71', 'column_72', 'column_73', 'column_74', 'column_75', 'column_76', 'column_77', 'column_78', 'column_79', 'column_80', 'column_81', 'column_82', 'column_83', 'column_84', 'column_85', 'column_86', 'column_87', 'column_88', 'column_89', 'column_90', 'column_91', 'column_92', 'column_93', 'column_94', 'column_95', 'column_96', 'column_97', 'column_98', 'column_99', 'column_100', 'column_101', 'column_102', 'column_103', 'column_104', 'column_105', 'column_106', 'column_107', 'column_108', 'column_109', 'column_110', 'column_111', 'column_112', 'column_113', 'column_114', 'column_115', 'column_116', 'column_117', 'column_118', 'column_119', 'column_120', 'column_121', 'column_122', 'column_123', 'column_124', 'column_125', 'column_126', 'column_127', 'column_128', 'column_129', 'column_130', 'column_131', 'column_132', 'column_133', 'column_134', 'column_135', 'column_136', 'column_137', 'column_138', 'column_139', 'column_140', 'column_141', 'column_142', 'column_143', 'column_144', 'column_145', 'column_146', 'column_147', 'column_148', 'column_149', 'column_150', 'column_151', 'column_152', 'column_153', 'column_154', 'column_155', 'column_156', 'column_157', 'column_158', 'column_159', 'column_160', 'column_161', 'column_162', 'column_163', 'column_164', 'column_165', 'column_166', 'column_167', 'column_168', 'column_169', 'column_170', 'column_171', 'column_172', 'column_173', 'column_174', 'column_175', 'column_176', 'column_177', 'column_178', 'column_179', 'column_180', 'column_181', 'column_182', 'column_183', 'column_184', 'column_185', 'column_186', 'column_187', 'column_188', 'column_189', 'column_190', 'column_191', 'column_192', 'column_193', 'column_194', 'column_195', 'column_196', 'column_197', 'column_198', 'column_199', 'column_200', 'column_201', 'column_202', 'column_203', 'column_204', 'column_205', 'column_206', 'column_207', 'column_208', 'column_209', 'column_210', 'column_211', 'column_212', 'column_213', 'column_214', 'column_215', 'column_216', 'column_217', 'column_218', 'column_219', 'column_220', 'column_221', 'column_222', 'column_223', 'column_224', 'column_225', 'column_226', 'column_227', 'column_228', 'column_229', 'column_230', 'column_231', 'column_232', 'column_233', 'column_234', 'column_235', 'column_236', 'column_237', 'column_238', 'column_239', 'column_240', 'column_241', 'column_242', 'column_243', 'column_244', 'column_245', 'column_246', 'column_247', 'column_248', 'column_249', 'column_250', 'column_251', 'column_252', 'column_253', 'column_254', 'column_255', 'column_256'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_257;
isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];

% Train a classifier
% This code specifies all the classifier options and trains the classifier.
template = templateSVM(...
    'KernelFunction', 'polynomial', ...
    'PolynomialOrder', 3, ...
    'KernelScale', 'auto', ...
    'BoxConstraint', 1, ...
    'Standardize', true);
classificationSVM = fitcecoc(...
    predictors, ...
    response, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17]);

% Create the result struct with predict function
predictorExtractionFcn = @(x) array2table(x, 'VariableNames', predictorNames);
svmPredictFcn = @(x) predict(classificationSVM, x);
trainedClassifier.predictFcn = @(x) svmPredictFcn(predictorExtractionFcn(x));

% Add additional fields to the result struct
trainedClassifier.ClassificationSVM = classificationSVM;
trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2020a.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 256 columns because this model was trained using 256 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');

% Extract predictors and response
% This code processes the data into the right shape for training the
% model.
% Convert input to table
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14', 'column_15', 'column_16', 'column_17', 'column_18', 'column_19', 'column_20', 'column_21', 'column_22', 'column_23', 'column_24', 'column_25', 'column_26', 'column_27', 'column_28', 'column_29', 'column_30', 'column_31', 'column_32', 'column_33', 'column_34', 'column_35', 'column_36', 'column_37', 'column_38', 'column_39', 'column_40', 'column_41', 'column_42', 'column_43', 'column_44', 'column_45', 'column_46', 'column_47', 'column_48', 'column_49', 'column_50', 'column_51', 'column_52', 'column_53', 'column_54', 'column_55', 'column_56', 'column_57', 'column_58', 'column_59', 'column_60', 'column_61', 'column_62', 'column_63', 'column_64', 'column_65', 'column_66', 'column_67', 'column_68', 'column_69', 'column_70', 'column_71', 'column_72', 'column_73', 'column_74', 'column_75', 'column_76', 'column_77', 'column_78', 'column_79', 'column_80', 'column_81', 'column_82', 'column_83', 'column_84', 'column_85', 'column_86', 'column_87', 'column_88', 'column_89', 'column_90', 'column_91', 'column_92', 'column_93', 'column_94', 'column_95', 'column_96', 'column_97', 'column_98', 'column_99', 'column_100', 'column_101', 'column_102', 'column_103', 'column_104', 'column_105', 'column_106', 'column_107', 'column_108', 'column_109', 'column_110', 'column_111', 'column_112', 'column_113', 'column_114', 'column_115', 'column_116', 'column_117', 'column_118', 'column_119', 'column_120', 'column_121', 'column_122', 'column_123', 'column_124', 'column_125', 'column_126', 'column_127', 'column_128', 'column_129', 'column_130', 'column_131', 'column_132', 'column_133', 'column_134', 'column_135', 'column_136', 'column_137', 'column_138', 'column_139', 'column_140', 'column_141', 'column_142', 'column_143', 'column_144', 'column_145', 'column_146', 'column_147', 'column_148', 'column_149', 'column_150', 'column_151', 'column_152', 'column_153', 'column_154', 'column_155', 'column_156', 'column_157', 'column_158', 'column_159', 'column_160', 'column_161', 'column_162', 'column_163', 'column_164', 'column_165', 'column_166', 'column_167', 'column_168', 'column_169', 'column_170', 'column_171', 'column_172', 'column_173', 'column_174', 'column_175', 'column_176', 'column_177', 'column_178', 'column_179', 'column_180', 'column_181', 'column_182', 'column_183', 'column_184', 'column_185', 'column_186', 'column_187', 'column_188', 'column_189', 'column_190', 'column_191', 'column_192', 'column_193', 'column_194', 'column_195', 'column_196', 'column_197', 'column_198', 'column_199', 'column_200', 'column_201', 'column_202', 'column_203', 'column_204', 'column_205', 'column_206', 'column_207', 'column_208', 'column_209', 'column_210', 'column_211', 'column_212', 'column_213', 'column_214', 'column_215', 'column_216', 'column_217', 'column_218', 'column_219', 'column_220', 'column_221', 'column_222', 'column_223', 'column_224', 'column_225', 'column_226', 'column_227', 'column_228', 'column_229', 'column_230', 'column_231', 'column_232', 'column_233', 'column_234', 'column_235', 'column_236', 'column_237', 'column_238', 'column_239', 'column_240', 'column_241', 'column_242', 'column_243', 'column_244', 'column_245', 'column_246', 'column_247', 'column_248', 'column_249', 'column_250', 'column_251', 'column_252', 'column_253', 'column_254', 'column_255', 'column_256', 'column_257'});

predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14', 'column_15', 'column_16', 'column_17', 'column_18', 'column_19', 'column_20', 'column_21', 'column_22', 'column_23', 'column_24', 'column_25', 'column_26', 'column_27', 'column_28', 'column_29', 'column_30', 'column_31', 'column_32', 'column_33', 'column_34', 'column_35', 'column_36', 'column_37', 'column_38', 'column_39', 'column_40', 'column_41', 'column_42', 'column_43', 'column_44', 'column_45', 'column_46', 'column_47', 'column_48', 'column_49', 'column_50', 'column_51', 'column_52', 'column_53', 'column_54', 'column_55', 'column_56', 'column_57', 'column_58', 'column_59', 'column_60', 'column_61', 'column_62', 'column_63', 'column_64', 'column_65', 'column_66', 'column_67', 'column_68', 'column_69', 'column_70', 'column_71', 'column_72', 'column_73', 'column_74', 'column_75', 'column_76', 'column_77', 'column_78', 'column_79', 'column_80', 'column_81', 'column_82', 'column_83', 'column_84', 'column_85', 'column_86', 'column_87', 'column_88', 'column_89', 'column_90', 'column_91', 'column_92', 'column_93', 'column_94', 'column_95', 'column_96', 'column_97', 'column_98', 'column_99', 'column_100', 'column_101', 'column_102', 'column_103', 'column_104', 'column_105', 'column_106', 'column_107', 'column_108', 'column_109', 'column_110', 'column_111', 'column_112', 'column_113', 'column_114', 'column_115', 'column_116', 'column_117', 'column_118', 'column_119', 'column_120', 'column_121', 'column_122', 'column_123', 'column_124', 'column_125', 'column_126', 'column_127', 'column_128', 'column_129', 'column_130', 'column_131', 'column_132', 'column_133', 'column_134', 'column_135', 'column_136', 'column_137', 'column_138', 'column_139', 'column_140', 'column_141', 'column_142', 'column_143', 'column_144', 'column_145', 'column_146', 'column_147', 'column_148', 'column_149', 'column_150', 'column_151', 'column_152', 'column_153', 'column_154', 'column_155', 'column_156', 'column_157', 'column_158', 'column_159', 'column_160', 'column_161', 'column_162', 'column_163', 'column_164', 'column_165', 'column_166', 'column_167', 'column_168', 'column_169', 'column_170', 'column_171', 'column_172', 'column_173', 'column_174', 'column_175', 'column_176', 'column_177', 'column_178', 'column_179', 'column_180', 'column_181', 'column_182', 'column_183', 'column_184', 'column_185', 'column_186', 'column_187', 'column_188', 'column_189', 'column_190', 'column_191', 'column_192', 'column_193', 'column_194', 'column_195', 'column_196', 'column_197', 'column_198', 'column_199', 'column_200', 'column_201', 'column_202', 'column_203', 'column_204', 'column_205', 'column_206', 'column_207', 'column_208', 'column_209', 'column_210', 'column_211', 'column_212', 'column_213', 'column_214', 'column_215', 'column_216', 'column_217', 'column_218', 'column_219', 'column_220', 'column_221', 'column_222', 'column_223', 'column_224', 'column_225', 'column_226', 'column_227', 'column_228', 'column_229', 'column_230', 'column_231', 'column_232', 'column_233', 'column_234', 'column_235', 'column_236', 'column_237', 'column_238', 'column_239', 'column_240', 'column_241', 'column_242', 'column_243', 'column_244', 'column_245', 'column_246', 'column_247', 'column_248', 'column_249', 'column_250', 'column_251', 'column_252', 'column_253', 'column_254', 'column_255', 'column_256'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_257;
isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];

% Perform cross-validation
partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 10);

% Compute validation predictions
[validationPredictions, validationScores] = kfoldPredict(partitionedModel);

% Compute validation accuracy
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if mak<validationAccuracy
    mak=validationAccuracy
    
    tahmin=validationPredictions;
    cevap=response;
end
k
C=confusionmat(response,validationPredictions);
[m,n]=size(C); gm(k)=1;
% iki sınıflı için
TP = C(1,1);
FP = C(1,2);
FN = C(2,1);
TN = C(2,2);

for i=1:m
    rr(i)=C(i,i)/sum(C(i,:));
    pp(i)=C(i,i)/sum(C(:,i));
    gm(k)=gm(k)*rr(i);
end
R(k)=mean(rr); P(k)=mean(pp); gm(k)=gm(k)^(1/m); dogru(k)=validationAccuracy;
F1=(2.*P.*R)./(P+R);
%MCC(k) = ((TP*TN)-(FP*FN))/sqrt((TP+FP)*(TP+FN)*(TN+FP)*(TN+FN)); 
end
%    zaman(z)= toc;
%end

%ort = mean(zaman(1,2:6))
%st = std(zaman(1,2:6))

%hesapla
hesapla
sayac=1;
for i=1:617:6170
    thm=tahmin(i:i+616);
    c1=cevap(i:i+616);
    d1=find(thm==c1);
    fold(sayac)=length(d1)/617;
    sayac=sayac+1;
end

zaman = toc

Class_By_Class(1,1)=0;
for i=1:17
Class_By_Class(i,1) = (C(i,i) / sum(C(i,:)))*100;
end

save Sonuc_SVM_Histogram.mat

SVM_LBP


