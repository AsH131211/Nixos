{ ... }:

{
  # Disable PulseAudio (PipeWire provides PulseAudio compatibility)
  services.pulseaudio.enable = false;

  # Real-time scheduling for audio
  security.rtkit.enable = true;

  # PipeWire
  services.pipewire = {
    enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;

    pulse.enable = true;

    # jack.enable = true;
  };
}
