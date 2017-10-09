//
// There is darkening colour and cutting off pixels with weak alpha.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float max_value = max(gl_FragColor.r, max(gl_FragColor.g, gl_FragColor.b));
	float max_colour = 0.5;
	if (max_value > max_colour)
	{
		gl_FragColor.rgb /= (max_value / max_colour);
	}
	gl_FragColor.a = step(0.5, gl_FragColor.a);
}
