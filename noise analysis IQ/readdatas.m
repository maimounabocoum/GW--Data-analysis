%% read datas
clearvars;


Atoms12p5kHz    = importdata('IQ mod Atoms 12p5kHz frequency mod.txt');
Atoms25kHz      = importdata('IQ mod Atoms 25kHz frequency mod.txt');
Atoms50kHz      = importdata('IQ mod Atoms 50kHz frequency mod.txt');
Atoms100kHz     = importdata('IQ mod Atoms 100kHz frequency mod.txt');
Atoms200kHz     = importdata('IQ mod Atoms 200kHz frequency mod.txt');
Atoms400kHz     = importdata('IQ mod Atoms 400kHz frequency mod.txt');

repump12p5kHz           = importdata('IQ mod repump 12p5kHz frequency mod.txt');
repump25kHz             = importdata('IQ mod repump 25kHz frequency mod.txt');
repump100kHz            = importdata('IQ mod repump 100kHz frequency mod.txt');
repump200kHz            = importdata('IQ mod repump 200kHz frequency mod.txt');
repump400kHz            = importdata('IQ mod repump 400kHz frequency mod.txt');

Atoms180           = importdata('IQ mod atoms 180deg Phase mod.txt');
Atoms360           = importdata('IQ mod atoms 10deg Phase mod.txt');

repump180               = importdata('IQ mod repump 180deg Phase mod.txt');
repump360               = importdata('IQ mod repump 360 deg Phase Mod.txt');

figure(4);clf;
subplot(211)
plot(Atoms180(:,1)*1e-3,Atoms180(:,2),...
    'DisplayName','180°'); hold on
plot(Atoms360(:,1)*1e-3,Atoms360(:,2),...
    'DisplayName','360°'); 
grid on
xlabel('frequency(kHz)')
ylabel('dBm/Hz')
legend;
title('Atoms response P-polarized')
subplot(212)
plot(repump180(:,1)*1e-3,repump180(:,2),...
    'DisplayName','180°'); hold on
plot(repump360(:,1)*1e-3,repump360(:,2),...
    'DisplayName','360°');  
grid on
xlabel('Repump intensity noise')
ylabel('dBm/Hz')
legend;
title('AC Balanced Detector')

set(findall(gcf,'-property','FontSize'),'FontSize',12)

figure(1);clf;
subplot(211)
plot(Atoms12p5kHz(:,1)*1e-3,Atoms12p5kHz(:,2),...
    'DisplayName','Atoms 12.5kHz'); hold on
plot(Atoms25kHz(:,1)*1e-3,Atoms25kHz(:,2),...
    'DisplayName','Atoms 25kHz'); 
plot(Atoms100kHz(:,1)*1e-3,Atoms100kHz(:,2),...
    'DisplayName','Atoms 100kHz'); 
plot(Atoms200kHz(:,1)*1e-3,Atoms200kHz(:,2),...
    'DisplayName','Atoms 200kHz'); 
plot(Atoms400kHz(:,1)*1e-3,Atoms400kHz(:,2),...
    'DisplayName','Atoms 400kHz'); 
grid on
xlabel('frequency(kHz)')
ylabel('dBm/Hz')
legend;
title('Atoms response P-polarized')
subplot(212)
plot(repump12p5kHz(:,1)*1e-3,repump12p5kHz(:,2),...
    'DisplayName','Repump 12.5kHz'); hold on
plot(repump25kHz(:,1)*1e-3,repump25kHz(:,2),...
    'DisplayName','Repump 25kHz'); 
plot(repump100kHz(:,1)*1e-3,repump100kHz(:,2),...
    'DisplayName','Repump 100kHz'); 
plot(repump200kHz(:,1)*1e-3,repump200kHz(:,2),...
    'DisplayName','Repump 200kHz'); 
plot(repump400kHz(:,1)*1e-3,repump400kHz(:,2),...
    'DisplayName','Repump 400kHz'); 
grid on
xlabel('Repump intensity noise')
ylabel('dBm/Hz')
legend;
title('AC Balanced Detector')

set(findall(gcf,'-property','FontSize'),'FontSize',12)

%% analysis of noise variation
FreqMod             = [12.5,25,100,200,400]*1e3 ; % amplitude of modulation at 14.3 kHz in Hz
AmpRepump           = [-69.1933,-67.9021,-55.4996,-48.8107,-45.4844] +120.86  ;
AtomsFreqMod        = [-97.39,-93.58,-84.6139,-80.28,-74.76] + 101.38;

AmpMod              = [-58.6 , -40.9 , -30 ] + 104;
AtomAmpMod          = [-102.9,-97.2,-92] + 102.9;

PhaseMod            = [-60.92 -85.50] + 122.36;
AtomPhaseMod        = [-91.71 -102.17] + 102.17;

figure(2);clf;
plot(AmpRepump,AtomsFreqMod,'DisplayName','frequency Mod') ; hold on
plot(AmpMod,AtomAmpMod,'DisplayName','Amplitude Mod'); hold on
plot(PhaseMod,AtomPhaseMod ,'DisplayName','Phase Mod','Marker','square');
xlabel('Amplitude Modulation dBm/Hz')
ylabel('Atoms Noise dBm/Hz')
grid on;
legend;

%%






