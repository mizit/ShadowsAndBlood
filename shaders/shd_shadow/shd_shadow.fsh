//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.rgb = vec3(0.0);
	/*if (gl_FragColor.a < 0.3)
	{
		gl_FragColor.a = 0.0;
	}*/
	gl_FragColor.a = step(0.3, gl_FragColor.a);
	gl_FragColor.a *= 0.3;
}
