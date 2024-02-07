#include <SFML/Graphics.hpp>
#include <random>
#include <iostream>
#include <vector>
#include <cmath>

template <typename T>
T& clamp(T& val,const T& low,const T& high)
{
    if(val >= high)
        val = high;
    if(val <= low)
        val = low;
    return val;
}

class s_line_data
{
public:
    std::vector<sf::RectangleShape> lines;
    s_line_data(float lineWidth,float lineThickness,float minVal,float maxVal,sf::Color lineColor)
    : s_lineWidth(lineWidth),s_minVal(minVal),s_maxVal(maxVal),lineColor(lineColor),lineThickness(lineThickness)
    {
    }
    float s_minVal;
    float s_maxVal;
    float s_lineWidth;
    int lineOrder = 0;
    float currentYValue = 0;
    float lineThickness = 0;
    sf::Color lineColor;
    void addLine(sf::RectangleShape line)
    {
        lines.push_back(line);
    }
};

int main()
{
    const int width = 640;
    const int height = 480;
    const float lineThickness = 1.0f;
    sf::RenderWindow window(sf::VideoMode(width, height), "SFML Application");
    window.setFramerateLimit(60);
    std::vector<sf::RectangleShape> lines;
    std::vector<s_line_data> lineDatas;
    lineDatas.push_back(s_line_data(2.0f,1.0f,-8.0f,4.0f,sf::Color::Blue));
    lineDatas.push_back(s_line_data(3.0f,2.0f,-12.0f,9.0f,sf::Color::Yellow));
    lineDatas.push_back(s_line_data(1.0f,1.7f,-2.0f,1.7f,sf::Color::Cyan));
    lineDatas.push_back(s_line_data(1.5f,1.0f,-3.0f,3.5f,sf::Color::Magenta));
    lineDatas.push_back(s_line_data(1.0f,1.3f,-20.0f,18.0f,sf::Color::Red));
    while (window.isOpen())
    {
        sf::Event event;

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }
        window.clear(sf::Color::Black);
        for(auto& lineData : lineDatas)
        {
            std::random_device rd;

            std::mt19937 generator(rd());
            std::uniform_real_distribution<float> distribution( lineData.s_minVal, lineData.s_maxVal);
            float lastYValue = lineData.currentYValue;
            float randomValue = distribution(generator);
            lineData.currentYValue += randomValue;
            lineData.currentYValue = clamp<float>(lineData.currentYValue,-height,0);
            float degree = atanf(randomValue / lineData.s_lineWidth) * 180 / M_PI;
            sf::RectangleShape line(sf::Vector2f(sqrt(randomValue*randomValue + lineData.s_lineWidth*lineData.s_lineWidth),lineData.lineThickness));
            line.setPosition(sf::Vector2f(lineData.lineOrder * lineData.s_lineWidth,height - lineData.lineThickness * 3 + lastYValue));
            line.rotate(degree);
            line.setFillColor(lineData.lineColor);
            lineData.addLine(line);
            lineData.lineOrder++;

            for(const auto& baseLine : lineData.lines)
            {
                window.draw(baseLine);
            }
        }

        window.display();
    }
}