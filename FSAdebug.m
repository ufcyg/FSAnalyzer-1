% debug script for FSAnalyzer v0.9
[dsname, dspath] = uigetfile('*.mat', 'Select bugreport','Multiselect','off');
dsfpath = strcat(dspath,dsname);
dsloaded = load(dsfpath);
pool = [];
pool = dsloaded.pool;
pool.debug = 1;
buttoncontrole(pool,1);

%% test module peak detection marker channel
% pool = rmfield(pool,{'Mpeaks','adapGRPrng','HpeakCk'});
% pool = peakAdaptM( pool );