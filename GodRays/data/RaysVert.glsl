varying vec4 vertTexCoord;

//attribute vec4 gl_MultiTexCoord0;

void main(void)
{
	vertTexCoord = gl_MultiTexCoord0;
//	gl_FrontColor = gl_Color;
        gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}