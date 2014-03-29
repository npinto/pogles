# A port of the Hello_Triangle example from the OpenGL ES 2.0 Programming
# Guide.  This is a simple example that draws a single triangle with a minimal
# vertex/fragment shader.  The purpose of this example is to demonstrate the
# basic concepts of OpenGL ES 2.0 rendering.


from array import array

from pogles.egl import *
from pogles.gles2 import *


# Create a shader object, load the shader source, and compile the shader.
def load_shader(shader_type, shader_source):

    # Create the shader object.
    shader = glCreateShader(shader_type)
    if shader == 0:
        return 0

    # Load the shader source.
    glShaderSource(shader, shader_source)
   
    # Compile the shader.
    glCompileShader(shader)

    # Check the compile status.
    compiled, = glGetShaderiv(shader, GL_COMPILE_STATUS)
    if not compiled:
        glDeleteShader(shader);

        raise GLException(
                "Error compiling shader:\n%s" % glGetShaderInfoLog(shader))

    return shader;


# Create the program and shaders.
def create_program():

    vertex_shader_source = """
attribute vec4 vPosition;
void main()
{
    gl_Position = vPosition;
}
"""
   
    frament_shader_source = """
precision mediump float;
void main()
{
    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
"""

    # Load the vertex/fragment shaders.
    vertex_shader = load_shader(GL_VERTEX_SHADER, vertex_shader_source)
    fragment_shader = load_shader(GL_FRAGMENT_SHADER, frament_shader_source);

    # Create the program.
    program = glCreateProgram()
    if program == 0:
        return 0

    glAttachShader(program, vertex_shader)
    glAttachShader(program, fragment_shader)

    # Bind vPosition to attribute 0.
    glBindAttribLocation(program, 0, 'vPosition')

    # Link the program.
    glLinkProgram(program)

    # Check the link status.
    linked, = glGetProgramiv(program, GL_LINK_STATUS)
    if not linked:
        glDeleteProgram(program)

        raise GLException(
                "Error linking program:\n%s" % glGetProgramInfoLog(program))

    glClearColor(0.0, 0.0, 0.0, 0.0)

    return program


# Draw a triangle using the shaders.
def draw(program, width, height):

    #vVertices = array('f', [ 0.0,  0.5,  0.0, 
                            #-0.5, -0.5,  0.0,
                             #0.5, -0.5,  0.0])
    import numpy as np
    vVertices = np.array([ 0.0,  0.5,  0.0, 
                          -0.5, -0.5,  0.0,
                          0.5, -0.5,  0.0], dtype='f')
      
    # Set the viewport.
    glViewport(0, 0, width, height)
   
    # Clear the color buffer.
    glClear(GL_COLOR_BUFFER_BIT)

    # Use the program object.
    glUseProgram(program)

    # Load the vertex data.
    glVertexAttribPointer(0, 3, GL_FLOAT, False, 0, vVertices)
    glEnableVertexAttribArray(0)

    glDrawArrays(GL_TRIANGLES, 0, 3)


# Create an EGL rendering context and all associated elements.
def create_egl_context(native_window, attribs):

    # Get the default display.
    display = eglGetDisplay()

    # Initialize EGL.
    eglInitialize(display)

    # Choose the config.
    config = eglChooseConfig(display, attribs)[0]

    # Create a surface from the native window.
    surface = eglCreateWindowSurface(display, config, native_window, [])

    # Create a GL context.
    context = eglCreateContext(display, config, None,
            [EGL_CONTEXT_CLIENT_VERSION, 2])

    # Make the context current.
    eglMakeCurrent(display, surface, surface, context)

    return display, surface


if __name__ == '__main__':

    import select
    import sys

    from pogles.platform import ppCreateNativeWindow

    native_window = ppCreateNativeWindow()
    display, surface = create_egl_context(native_window,
            [EGL_RED_SIZE, 5, EGL_GREEN_SIZE, 6, EGL_BLUE_SIZE, 5])

    width = eglQuerySurface(display, surface, EGL_WIDTH)
    height = eglQuerySurface(display, surface, EGL_HEIGHT)

    program = create_program()

    ready, _, _ = select.select([sys.stdin], [], [], 0)
    while len(ready) == 0:
        draw(program, width, height)
        eglSwapBuffers(display, surface)

        ready, _, _ = select.select([sys.stdin], [], [], 0)
