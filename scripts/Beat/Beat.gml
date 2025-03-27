function Beat(_bpm, _offset = 0, _frameRate = game_get_speed(gamespeed_fps)) constructor {
    self.bpm = _bpm;
    self.offset = _offset;
    self.frameRate = _frameRate;

	function BeatToFrames(beatNumber) {
        var secondsPerBeat = 60 / self.bpm;
        var totalSeconds = secondsPerBeat * beatNumber;
        var totalFrames = totalSeconds * self.frameRate;
        var offsetFrames = self.offset * self.frameRate;
        return floor(totalFrames + offsetFrames);
    }
    
    function FramesToBeats(frames) {
        var offsetFrames = self.offset * self.frameRate;
        var adjustedFrames = frames - offsetFrames;
        var secondsPerBeat = 60 / self.bpm;
        var framesPerBeat = secondsPerBeat * self.frameRate;
        return adjustedFrames / framesPerBeat;
    }
}