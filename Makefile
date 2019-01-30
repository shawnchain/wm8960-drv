# WM8960 Soundcard Platform Support
snd-soc-wm8960-objs := wm8960.o
snd-soc-wm8960-soundcard-objs := wm8960-soundcard.o

obj-$(CONFIG_SND_SOC_WM8960_SOUNDCARD) += snd-soc-wm8960-soundcard.o
obj-$(CONFIG_SND_SOC_WM8960_X) += snd-soc-wm8960.o

ifdef DEBUG
ifneq ($(DEBUG),0)
	ccflags-y += -DDEBUG -DAC101_DEBG
endif
endif



