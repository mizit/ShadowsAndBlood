//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float max_value = max(gl_FragColor.r, max(gl_FragColor.g, gl_FragColor.b));
	if (max_value > 0.40)
	{
		gl_FragColor.rgb /= (max_value / 0.40);
	}
	gl_FragColor.a = step(0.5, gl_FragColor.a);
}
