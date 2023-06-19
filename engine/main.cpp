#include <glad/gl.h>
#include <GLFW/glfw3.h>

#include <stdio.h>

int main()
{
    // setup GLFW
    glfwInit();

    GLFWwindow* window = glfwCreateWindow(800, 800, "LearnOpenGL", nullptr, nullptr);
    if (window == nullptr) {
        printf("Failed to create a window.");
        return -1;
    };

    // making the context for the main thread
    glfwMakeContextCurrent(window);

    // setup and check the GLAD
    int version = gladLoadGL(glfwGetProcAddress);
    if (version == 0) {
        printf("Failed to initialize OpenGL context\n");
        return -1;
    }
    
    // put the version loaded
    printf("Loaded OpenGL %d.%d\n", GLAD_VERSION_MAJOR(version), GLAD_VERSION_MINOR(version));

    //glViewport(0, 0, 800, 800);

    while (!glfwWindowShouldClose(window))
    {
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, true);
        }

        glClearColor(0.5f, 0.3f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
}