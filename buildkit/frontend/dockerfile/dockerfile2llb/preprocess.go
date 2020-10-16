package dockerfile2llb

import (
	"bytes"
	"fmt"
	"os/exec"
)

// PreprocessDockerfile pipes dockerfile through an external program at /preprocessor
func PreprocessDockerfile(text []byte) ([]byte, error) {
	cmd := exec.Command("/preprocessor")
	cmd.Stdin = bytes.NewReader(text)
	var out bytes.Buffer
	var outerr bytes.Buffer
	cmd.Stdout = &out
	cmd.Stderr = &outerr
	err := cmd.Run()
	if err != nil {
		err = fmt.Errorf("%w; %s - %s", err, out, outerr)
	}
	return out.Bytes(), err
}
